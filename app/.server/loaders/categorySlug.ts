import { LoaderFunctionArgs, json } from '@remix-run/node';

import { requireUserSession } from '~/session';
import { uniqueBy } from '~/utils/objects';
import { getAccount } from '~/.server/services/accounts';
import { getCategoriesOverview } from '~/.server/services/categories';

export async function loader({ request, params }: LoaderFunctionArgs) {
  const { supabaseClient } = await requireUserSession({ request });
  const account = await getAccount(supabaseClient, params.team);

  const categories = (await getCategoriesOverview(supabaseClient, params.team!)) ?? [];

  const categorySlug = params.categorySlug ?? 'carbon-accounting';

  const parentCategoriesRaw = categories.filter(
    (c) => c.parent_category_parent_category_slug === categorySlug,
  );
  const parentCategories = uniqueBy(parentCategoriesRaw, 'parent_category_id');

  return json({
    account,
    categorySlug,
    parentCategories,
    categories,
  });
}
