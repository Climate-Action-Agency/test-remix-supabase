import { ActionFunctionArgs } from '@remix-run/node';

import config from '~/config/config';
import { requireUserSession } from '~/session';
import { getAccountBySlug, getAllGroupAccounts } from '~/.server/services/accounts';
import { getCategoryOverviewBySlug, categoryReferenceAndName } from '~/.server/services/categories';
import { sendEmailDataCollectionInvitation } from '~/.server/services/email';
import { getCurrentYear } from '~/utils/dates';

export async function action({ request }: ActionFunctionArgs) {
  const { supabaseClient } = await requireUserSession({ request });
  const formData = await request.formData();

  if (request.method === 'POST') {
    const userIds = formData.getAll('user_id');
    if (userIds.length > 0) {
      const accountCategoryUsers: AccountCategoryUserInsert[] = userIds.map((userId) => ({
        user_id: userId as string,
        account_id: formData.get('account_id') as string,
        category_id: parseInt(formData.get('category_id') as string),
        account_role: formData.get('account_role') as string,
      }));

      // Insert into account_category_user
      const { error: accountCategoryUserError } = await supabaseClient
        .from('account_category_user')
        .upsert(accountCategoryUsers);
      if (accountCategoryUserError) throw new Error(accountCategoryUserError.message);
    }

    // Insert into account_category
    const accountIds = formData.getAll('sub_account_id');
    const accountCategories: AccountCategoryInsert[] = accountIds.map((account_id) => ({
      account_id,
      category_id: formData.get('category_id'),
    }));
    const { error: accountCategoryError } = await supabaseClient
      .from('account_category')
      .upsert(accountCategories);
    if (accountCategoryError) throw new Error(accountCategoryError.message);

    // Prepare for email sending
    const {
      data: { user: invitingUser },
    } = await supabaseClient.auth.getUser();

    const accountSlug = formData.get('account_slug') as string;
    const categorySlug = formData.get('category_slug') as string;

    const account = await getAccountBySlug(supabaseClient, accountSlug);

    const category = await getCategoryOverviewBySlug({ supabaseClient, accountSlug, categorySlug });
    const parentCategory = await getCategoryOverviewBySlug({
      supabaseClient,
      accountSlug,
      categorySlug: category.parent_category_slug!,
    });

    // Send email to each user
    const categoryUsers = category.child_category_users;
    const dataCollectionUrl = `${config.appUrl}${accountSlug}/overview/${getCurrentYear()}/${parentCategory.parent_category_parent_category_slug}/${category.parent_category_slug}/${category.child_category_slug}`;
    await Promise.all(
      userIds.map(async (user_id) => {
        const user = categoryUsers?.find((u) => u?.id === user_id);
        if (user) {
          await sendEmailDataCollectionInvitation(user.email, {
            fromEmail: invitingUser?.email ?? '(unknown)',
            accountName: account?.name ?? '(team)',
            categories: categoryReferenceAndName(category),
            dataCollectionUrl,
          });
        }
      }),
    );

    // Send email to each account owner
    const allGroupAccounts = await getAllGroupAccounts(supabaseClient, accountSlug);
    await Promise.all(
      accountIds.map(async (accountId) => {
        const account = allGroupAccounts?.find((a) => a?.id === accountId);
        if (account) {
          // Set individual account URL
          const dataCollectionUrlForAccount = `${config.appUrl}${account.slug}/overview/${getCurrentYear()}/${parentCategory.parent_category_slug}/${category.child_category_slug}`;
          await sendEmailDataCollectionInvitation(account.primary_owner_user_email, {
            fromEmail: invitingUser?.email ?? '(unknown)',
            accountName: account?.name ?? '(team)',
            categories: categoryReferenceAndName(category),
            dataCollectionUrl: dataCollectionUrlForAccount,
          });
        }
      }),
    );
  } else if (request.method === 'PATCH') {
    const { error: accountCategoryUserError } = await supabaseClient
      .from('account_category_user')
      .update({ account_role: formData.get('account_role') })
      .eq('user_id', formData.get('user_id') as string)
      .eq('account_id', formData.get('account_id') as string)
      .eq('category_id', parseInt(formData.get('category_id') as string));
    if (accountCategoryUserError) throw new Error(accountCategoryUserError.message);
  } else if (request.method === 'DELETE') {
    const userId = formData.get('user_id') as string;
    if (userId !== null) {
      // User removal
      const { error: accountCategoryUserError } = await supabaseClient
        .from('account_category_user')
        .delete()
        .eq('user_id', userId)
        .eq('account_id', formData.get('account_id') as string)
        .eq('category_id', parseInt(formData.get('category_id') as string));
      if (accountCategoryUserError) throw new Error(accountCategoryUserError.message);
    } else {
      // Sub-team removal
      const { error: accountCategoryError } = await supabaseClient
        .from('account_category')
        .delete()
        .eq('account_id', formData.get('account_id') as string)
        .eq('category_id', parseInt(formData.get('category_id') as string));
      if (accountCategoryError) throw new Error(accountCategoryError.message);
    }
  }
  return null;
}
