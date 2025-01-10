import { createSupabaseServerClient } from '~/supabase.server';
import { redirect } from '@remix-run/node';
import { getAccount } from '~/.server/services/accounts';

export async function requireUserSession({ request }: { request: Request }) {
  const { supabaseClient } = createSupabaseServerClient(request);
  const {
    data: { user },
    error,
  } = await supabaseClient.auth.getUser();

  if (error?.toString().includes('AuthRetryableFetchError')) {
    throw new Error('Can’t access the database');
  }

  if (user == null) {
    const url = new URL(request.url);
    const relativePath = url.pathname;
    // See also use of 'redirectPath' in app/routes/_out.tsx
    throw redirect(`/login?redirect=${encodeURIComponent(relativePath)}`);
  }

  return { user, supabaseClient };
}

export async function requireLoggedOut({ request }: { request: Request }) {
  const { supabaseClient } = createSupabaseServerClient(request);
  const {
    data: { user },
  } = await supabaseClient.auth.getUser();

  if (user !== null) {
    const redirectPath = new URL(request.url).searchParams.get('redirect');
    if (redirectPath) throw redirect(redirectPath);
    const team = await getAccount(supabaseClient);
    throw redirect(`/${team?.slug ?? 'onboard'}`);
  }

  return null;
}
