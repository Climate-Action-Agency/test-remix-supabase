import { ActionFunctionArgs } from '@remix-run/node';
import { getAccountBySlug } from '~/.server/services/accounts';
import { requireUserSession } from '~/session';
import { action as categoryStatusAction } from './categoryStatus';

export async function action({ request, params, context }: ActionFunctionArgs) {
  const formData = await request.formData();
  const subAction = formData.get('subAction');
  if (subAction === 'formData') {
    return await categorySubmissionAction({ request, params, context }, formData);
  } else {
    return await categoryStatusAction({ request, params, context }, formData);
  }
}

async function categorySubmissionAction(
  { request, params }: ActionFunctionArgs,
  formData: FormData,
) {
  const { supabaseClient } = await requireUserSession({ request });

  if (!params.team) {
    throw new Error('Team is required');
  }
  const account = await getAccountBySlug(supabaseClient, params.team);

  const accountCategory = {
    account_id: account.account_id,
    category_id: parseInt(formData.get('category_id') as string),
  };

  const { error } = await supabaseClient.from('category_submission').upsert(
    {
      ...accountCategory,
      content: formData.get('formDataJson'),
      year: params.year,
    },
    { onConflict: 'category_id, account_id, year' },
  );
  if (error) throw error;

  // Set category as 'in-progress'
  await supabaseClient.from('account_category').upsert(
    {
      ...accountCategory,
      status: 'in-progress' as CategoryStatus,
    },
    { onConflict: 'category_id, account_id' },
  );

  return true;
}
