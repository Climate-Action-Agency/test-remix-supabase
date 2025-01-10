import { createBrowserClient, createServerClient } from '@supabase/ssr';
import { Database } from '~/types/supabase';
import isClientSide from '~/utils/isClientSide';

declare global {
  interface Window {
    ENV: Record<string, string>;
  }
}

export function createClient() {
  if (isClientSide()) {
    return createBrowserClient<Database>(window.ENV.SUPABASE_URL, window.ENV.SUPABASE_ANON_KEY);
  } else {
    return createServerClient<Database>(process.env.SUPABASE_URL!, process.env.SUPABASE_ANON_KEY!, {
      cookies: {},
    });
  }
}
