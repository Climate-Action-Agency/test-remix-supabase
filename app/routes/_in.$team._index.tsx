import { LoaderFunctionArgs } from '@remix-run/node';
import { redirect } from '@remix-run/node';
import { getAccount } from '~/.server/services/accounts';
import { requireUserSession } from '~/session';
import { getCurrentYear } from '~/utils/dates';

export async function loader({ request, params }: LoaderFunctionArgs) {
  const { supabaseClient } = await requireUserSession({ request });
  const account = await getAccount(supabaseClient, params.team);
  if (account === null) {
    return redirect('/login');
  }
  return redirect(`/${params.team}/overview/${getCurrentYear()}/esrs`);
}
