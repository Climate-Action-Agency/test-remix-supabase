import { LoaderFunctionArgs } from '@remix-run/node';

import { getAccountsWithCategory } from '~/.server/services/accounts';
import { requireUserSession } from '~/session';

export async function loader({ request, params }: LoaderFunctionArgs) {
  const { supabaseClient } = await requireUserSession({ request });

  const data = await getAccountsWithCategory({
    supabaseClient,
    categorySlug: params.subCategorySlug,
  });
  return { accounts: data };
}
