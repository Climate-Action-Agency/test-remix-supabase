import { LoaderFunctionArgs } from '@remix-run/node';

import { requireUserSession } from '~/session';
import { getAccount, getAccountMembers, getChildAccounts } from '~/.server/services/accounts';
import { getCategoryOverviewBySlug, getCategoryBySlug } from '~/.server/services/categories';
import { getCategorySubmission } from '../services/categorySubmissions';

export async function loader({ request, params }: LoaderFunctionArgs) {
  const { supabaseClient } = await requireUserSession({ request });

  const account = await getAccount(supabaseClient, params.team);

  const childAccounts = await getChildAccounts(supabaseClient, params.team);
  const members = account?.account_id
    ? (await getAccountMembers(supabaseClient, account?.account_id)) ?? []
    : [];

  const category = await getCategoryOverviewBySlug({
    supabaseClient,
    accountSlug: account?.slug ?? 'no-account', // Ugly but since this loader is used in multiple places, we need to make sure it's always defined
    categorySlug: params.subCategorySlug!,
  });

  const subCategory = await getCategoryBySlug(supabaseClient, params.subCategorySlug!);

  const categorySubmission = await getCategorySubmission(
    supabaseClient,
    subCategory.id,
    account?.account_id,
    params.year,
  );

  const formDataRow: JSONFormsDataRow | null = categorySubmission && {
    year: categorySubmission.year ?? undefined,
    form: JSON.parse(
      (categorySubmission.content as string) ?? '{}',
    ) as JSONFormsDataCategorySubmission,
    requirements: JSON.parse(
      (categorySubmission.requirements_status as string) ?? '{}',
    ) as JSONFormsDataCategorySubmission,
  };

  return {
    account,
    childAccounts,
    members,
    category,
    subCategory,
    formDataRow,
  };
}

export type SubCategoryLoaderData = Awaited<ReturnType<typeof loader>>;
