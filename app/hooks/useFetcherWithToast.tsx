import { useFetcher } from '@remix-run/react';
import { useToast } from '~/@/components/ui/use-toast';
import { useEffect } from 'react';
import { PostgrestResponse } from '@supabase/supabase-js';

interface FetcherWithToastProps {
  successTitle?: string;
  errorTitle?: string;
  formField?: string;
}

export function useFetcherWithToast<T>({
  successTitle = 'Done',
  errorTitle = 'Error',
  formField,
}: FetcherWithToastProps) {
  const fetcher = useFetcher<PostgrestResponse<T>>();
  const { toast } = useToast();
  useEffect(() => {
    if (fetcher.state === 'loading') {
      if (fetcher.data?.error) {
        toast({
          title: errorTitle,
          variant: 'destructive',
          description:
            fetcher.data.error.details ??
            fetcher.data.error.hint ??
            fetcher.data.error.message ??
            fetcher.data.error.code ??
            fetcher.data?.error,
        });
      } else {
        const successMessage = formField
          ? successTitle.replace('{formField}', (fetcher.formData?.get(formField) as string) ?? '')
          : successTitle;
        toast({ title: successMessage });
      }
    }
  }, [fetcher.state, fetcher.formData, fetcher.data?.error, successTitle, errorTitle, toast]);
  return fetcher;
}
