import { ActionFunctionArgs } from '@remix-run/node';
import { getAccountBySlug } from '~/.server/services/accounts';
import { requireUserSession } from '~/session';

export async function action({ request, params }: ActionFunctionArgs) {
  const { supabaseClient } = await requireUserSession({ request });
  const formData = await request.formData();

  const account = await getAccountBySlug(supabaseClient, params.team);
  const { error } = await supabaseClient.from('category_submission').upsert(
    {
      category_id: formData.get('category_id'),
      account_id: account?.account_id,
      requirements_status: formData.get('formDataJson'),
      year: params.year,
    },
    { onConflict: 'category_id, account_id, year' },
  );

  if (error) throw error;
  return null;
}
