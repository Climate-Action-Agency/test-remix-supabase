import { useState, useMemo } from 'react';
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from '~/@/components/ui/dialog';
import { Button } from '~/@/components/ui/button';
import { Input } from '~/@/components/ui/input';
import { Heading } from '~/@/components/ui/heading';
import { useToast } from '~/@/components/ui/use-toast';
import SmartInput from '~/components/input/SmartInput';

import { parseTSVtoJSON } from '~/utils/csvParser';
import { useFetcherWithToast } from '~/hooks/useFetcherWithToast';
import { Tables } from '~/types/supabase';

interface ImportDialogProps {
  category: Tables<'category'>;
  metafields: InputField[];
  listSources: ListSources;
}

export default function ImportDialog({ category, metafields }: ImportDialogProps) {
  const fetcher = useFetcherWithToast({ successTitle: 'Data point added' });
  const [textareaValue, setTextareaValue] = useState('');
  const { toast } = useToast();

  const handleFileChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    const file = event.target.files?.[0];
    if (!file) return;
    const reader = new FileReader();
    reader.onload = (e) => {
      const text = e.target?.result;
      setTextareaValue(text as string);
    };
    reader.readAsText(file);
  };

  const jsonToImport = useMemo(
    () => JSON.stringify(parseTSVtoJSON(textareaValue, { slugifyHeaders: true })),
    [textareaValue],
  );

  const metafieldNames = ['year', ...metafields.map((f) => f.name)].join('\t');
  const metafieldExamples = [
    2023,
    ...metafields.map((f) => (f.type === 'number' ? 12.3 : 'blabla')),
  ].join('\t');

  return (
    <Dialog>
      <div className='p-1'>
        <DialogTrigger asChild>
          <Button>Import data…</Button>
        </DialogTrigger>
      </div>

      <DialogContent>
        <DialogHeader>
          <DialogTitle>Import data</DialogTitle>
          <DialogDescription>
            Import data from Excel, Google Sheets, or a CSV file.
          </DialogDescription>
        </DialogHeader>

        <fetcher.Form method='post'>
          <HiddenActivityFields category={category} />

          <textarea
            className='p-2 text-sm w-full h-40 border'
            placeholder={`Paste data (with headers) from Excel or Google Sheets e.g:\n\n${metafieldNames}\n${metafieldExamples}`}
            value={textareaValue}
            onChange={(e) => setTextareaValue(e.target.value)}
          />

          <Input type='hidden' name='import_json' value={jsonToImport} />

          <div className='p-4'>
            <input type='file' accept='.csv, .tsv' onChange={handleFileChange} />
          </div>

          <DialogTrigger asChild>
            <Button type='submit' onClick={() => toast({ title: 'Importing data...' })}>
              Import data into {category.name}
            </Button>
          </DialogTrigger>
        </fetcher.Form>
      </DialogContent>
    </Dialog>
  );
}

interface HiddenActivityFieldsProps {
  category: Tables<'category'>;
}

export function HiddenActivityFields({ category }: HiddenActivityFieldsProps) {
  return (
    <>
      <Input type='hidden' name='category_id' value={category?.id} />
      <Input type='hidden' name='category_slug' value={category?.slug} />
    </>
  );
}

export function AddDataForm({
  category,
  metafields,
  listSources,
}: {
  category: Tables<'category'>;
  metafields: InputField[];
  listSources: ListSources;
}) {
  const fetcher = useFetcherWithToast({ successTitle: `${category.name} added` });
  return (
    <>
      <Heading level='h3'>Add {category.name}</Heading>
      <fetcher.Form method='post'>
        <div className='flex'>
          <HiddenActivityFields category={category} />
          <Input placeholder='Year' name='year' type='number' className='mr-3' required />
          {metafields.map((inputField, index) => (
            <SmartInput
              key={index}
              inputField={inputField}
              listSources={listSources}
              required={inputField.required ?? false}
              tagAsMetadata
            />
          ))}
          <Button type='submit'>Add data</Button>
        </div>
      </fetcher.Form>
    </>
  );
}
