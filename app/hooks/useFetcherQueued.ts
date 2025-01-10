import { useFetcher, SubmitOptions } from '@remix-run/react';
import { useRef, useEffect, useCallback } from 'react';
import { PostgrestResponse } from '@supabase/supabase-js';

interface QueueItem<T> {
  data: FormData;
  options: SubmitOptions;
  resolve: (value: PostgrestResponse<T>) => void;
  reject: (error?: Error) => void;
}

export default function useFetcherQueued<T>(
  delay: number,
  onBegin?: (data: FormData, options: SubmitOptions) => void,
  onComplete?: (data: FormData, options: SubmitOptions) => void,
) {
  const fetcher = useFetcher<PostgrestResponse<T>>();
  const queue = useRef<QueueItem<T>[]>([]);
  const timer = useRef<ReturnType<typeof setTimeout> | null>(null);
  const isProcessing = useRef(false);

  const processQueue = useCallback(async () => {
    if (isProcessing.current || queue.current.length === 0) return;

    isProcessing.current = true;

    while (queue.current.length > 0) {
      const { data, options, resolve, reject } = queue.current.shift()!;

      try {
        fetcher.submit(data, options);
        onComplete?.(data, options);
        resolve(fetcher.data);
      } catch (error) {
        reject(error);
      }

      await new Promise((resolve) => {
        timer.current = setTimeout(resolve, delay);
      });
    }

    isProcessing.current = false;
  }, [delay, fetcher]);

  useEffect(() => {
    void processQueue();
  }, [processQueue]);

  const queuedSubmit = (data: FormData, options: SubmitOptions) => {
    onBegin?.(data, options);
    return new Promise<PostgrestResponse<T>>((resolve, reject) => {
      queue.current.push({ data, options, resolve, reject });
      void processQueue();
    });
  };

  return { fetcher, queuedSubmit };
}
