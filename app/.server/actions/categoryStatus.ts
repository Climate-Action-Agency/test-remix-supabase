import { ActionFunctionArgs } from '@remix-run/node';
import { SupabaseClient } from '@supabase/supabase-js';

import { Database } from '~/types/supabase';
import { requireUserSession } from '~/session';
import { getAccountBySlug, Account } from '~/.server/services/accounts';
import {
  getCategoryOverviewById,
  getCategoryOwner,
  getCategoryDataCollectionURL,
  categoryReferenceAndName,
} from '~/.server/services/categories';
import {
  sendEmailDataCollectionReviewInvitation,
  sendEmailDataCollectionReopen,
} from '~/.server/services/email';

export async function action({ request, params }: ActionFunctionArgs, formData: FormData) {
  const { supabaseClient } = await requireUserSession({ request });

  const account = await getAccountBySlug(supabaseClient, params.team);
  if (!account) {
    throw new Error('Account not found');
  }

  const accountCategory = {
    account_id: account.account_id,
    category_id: formData.get('category_id'),
  };

  const subAction = formData.get('subAction');

  if (subAction === 'setAccountCategoryStatus') {
    const newStatus = formData.get('status') as CategoryStatus;
    const { error } = await supabaseClient.from('account_category').upsert(
      {
        ...accountCategory,
        status: newStatus,
      },
      { onConflict: 'category_id, account_id' },
    );
    if (error) throw error;
    await sendEmailOnCategoryStatusChange(
      supabaseClient,
      account,
      formData.get('category_id') as string,
      newStatus,
    );
    return true;
  } else if (subAction === 'enableCategory') {
    const { error } = await supabaseClient
      .from('account_category')
      .upsert({ ...accountCategory, can_input: true });
    if (error) throw error;
    return true;
  } else if (subAction === 'disableCategory') {
    const { error } = await supabaseClient
      .from('account_category')
      .upsert({ ...accountCategory, can_input: false });
    if (error) throw error;
    return true;
  }

  return false;
}

async function sendEmailOnCategoryStatusChange(
  supabaseClient: SupabaseClient<Database>,
  account: Account,
  categoryId: string,
  newStatus: CategoryStatus,
) {
  const {
    data: { user },
  } = await supabaseClient.auth.getUser();

  const category = await getCategoryOverviewById({
    supabaseClient,
    accountId: account.account_id,
    categoryId,
  });
  const ownerUser = getCategoryOwner(category);

  const dataCollectionUrl = getCategoryDataCollectionURL(account?.slug, category);

  if (ownerUser) {
    const templateVariables = {
      fromEmail: user?.email ?? '(unknown)',
      accountName: account?.name ?? '(team)',
      categories: categoryReferenceAndName(category),
      dataCollectionUrl,
    };
    switch (newStatus) {
      case 'in-review':
        await sendEmailDataCollectionReviewInvitation(ownerUser?.email, templateVariables);
        break;
      // case 'in-parent-review':
      //   await sendEmailDataCollectionReviewInvitation(ownerUser?.email, templateVariables);
      //   break;
      case 'in-progress':
        await sendEmailDataCollectionReopen(ownerUser?.email, templateVariables);
        break;
    }
  }
}
