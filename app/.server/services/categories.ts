import { SupabaseClient } from '@supabase/supabase-js';

import { Database } from '~/types/supabase';
import { supabasePaginationAndSorting } from './paginationAndSorting';
import { uniqueBy, isUndefinedOrNullOrEmptyString } from '~/utils/objects';
import { getAccountById } from './accounts';
import config from '~/config/config';
import { getCurrentYear } from '~/utils/dates';

/** Return categories (or rootCategories if no parentCategoryId given) */
export async function getCategories(
  supabaseClient: SupabaseClient<Database>,
  parentCategoryIds?: number[],
): Promise<Category[]> {
  let query = supabaseClient.from('category').select('*').order('position', { ascending: true });
  query = parentCategoryIds
    ? query.in('parent_category_id', parentCategoryIds)
    : query.is('parent_category_id', null);
  const { data, error } = await query;
  if (error) {
    console.error('Error fetching categories:', error);
    return [];
  }
  return data;
}

/** Return one category */
export async function getCategoryById(
  supabaseClient: SupabaseClient<Database>,
  categoryId: number,
): Promise<Category> {
  const query = supabaseClient.from('category').select('*').eq('id', categoryId).single();
  const { data, error } = await query;
  if (error) {
    throw error;
  }
  return data;
}

/** Return one category */
export async function getCategoryBySlug(
  supabaseClient: SupabaseClient<Database>,
  categorySlug: string,
): Promise<Category> {
  const query = supabaseClient.from('category').select('*').eq('slug', categorySlug).single();
  const { data, error } = await query;
  if (error) {
    throw error;
  }
  return data;
}

/* ----- view_categories_overview ----- */

export interface ViewCategoriesAccount {
  account_id: string;
  account_name: string;
  account_category_ids: number[];
}

export interface ViewCategoriesUser {
  id: string;
  name: string;
  email: string;
  role: string;
}

// Fix because Supabase JSON types are just 'json'
type FunctionGetViewCategoriesOverviewReturnsOriginal =
  Database['public']['Functions']['get_view_categories_overview']['Returns'];
type FunctionGetViewCategoriesOverviewReturnsOneRow =
  FunctionGetViewCategoriesOverviewReturnsOriginal[number];
export type FunctionGetViewCategoriesOverviewReturns = Omit<
  FunctionGetViewCategoriesOverviewReturnsOneRow,
  'child_category_accounts' | 'child_category_users'
> & {
  child_category_accounts: ViewCategoriesAccount[] | [null];
  child_category_users: ViewCategoriesUser[] | [null];
};

export async function getCategoriesOverview(
  supabaseClient: SupabaseClient<Database>,
  accountSlug: string,
  pageAndSort?: DataPageAndSort,
  // filters?: DataFilters,
): Promise<FunctionGetViewCategoriesOverviewReturns[] | null> {
  let query = supabaseClient.rpc('get_view_categories_overview', {
    account_slug: accountSlug,
  });
  // Apply pagination and sorting
  query = pageAndSort ? (supabasePaginationAndSorting(query, pageAndSort) as typeof query) : query;
  const { data, error } = await query;
  if (error) {
    throw error;
  }

  const categoriesRaw = data as FunctionGetViewCategoriesOverviewReturns[];
  const categoriesWithoutDuplicates = uniqueBy(categoriesRaw, 'child_category_id');
  const categories = categoriesWithoutDuplicates.map((category) => {
    return {
      ...category,
      child_category_users: uniqueBy(category.child_category_users, 'id'),
    };
  });

  return categories;
}

/** Return one child category using the SQL view */
export async function getCategoryOverviewBySlug({
  supabaseClient,
  accountSlug,
  categorySlug,
}: {
  supabaseClient: SupabaseClient<Database>;
  accountSlug: string;
  categorySlug: string;
}): Promise<FunctionGetViewCategoriesOverviewReturns> {
  // TODO: move these assertions to the SQL function 'get_view_categories_overview'
  if (isUndefinedOrNullOrEmptyString(accountSlug)) {
    throw new Error('Account slug is required');
  }
  if (isUndefinedOrNullOrEmptyString(categorySlug)) {
    throw new Error('Category slug is required');
  }
  const query = supabaseClient
    .rpc('get_view_categories_overview', {
      account_slug: accountSlug,
    })
    .eq('child_category_slug', categorySlug);

  const { data, error } = await query;

  if (error) {
    throw error;
  }

  const categoryOverview = data[0] as FunctionGetViewCategoriesOverviewReturns;
  const catWithoutUserDuplicates = [
    ...new Set(uniqueBy(categoryOverview.child_category_users, 'id')),
  ];

  const category = {
    ...categoryOverview,
    child_category_users: catWithoutUserDuplicates,
    child_category_accounts: uniqueBy(
      categoryOverview?.child_category_accounts?.flatMap((acc) =>
        acc?.account_category_ids.flatMap((id) => {
          if (id === categoryOverview.child_category_id) return acc;
        }),
      ),
      'account_id',
    ),
  };

  return category;
}

/** Same as getCategoryOverviewBySlug but using IDs for account and category. */
export async function getCategoryOverviewById({
  supabaseClient,
  accountId,
  categoryId,
}: {
  supabaseClient: SupabaseClient<Database>;
  accountId: string;
  categoryId: string;
}): Promise<FunctionGetViewCategoriesOverviewReturns> {
  const account = await getAccountById(supabaseClient, accountId);
  if (!account) {
    throw new Error('Account not found');
  }
  const { data: category, error } = await supabaseClient
    .from('category')
    .select('slug')
    .eq('id', categoryId)
    .single();
  if (error) {
    throw error;
  }
  const categoryOverview = await getCategoryOverviewBySlug({
    supabaseClient,
    accountSlug: account.slug,
    categorySlug: category.slug,
  });
  return categoryOverview;
}

export function categoryReferenceAndName(category: FunctionGetViewCategoriesOverviewReturns) {
  return `${category.child_category_reference !== null ? category.child_category_reference + ': ' : ''}${category.child_category_name}`;
}

export function getCategoryMembers(
  category: FunctionGetViewCategoriesOverviewReturns,
  role: 'owner' | 'member' | undefined,
) {
  return (
    category.child_category_users
      ?.filter((user) => (role !== undefined ? user?.role === role : user !== null))
      .filter((user) => user !== null) ?? []
  );
}

export function getCategoryOwner(category: FunctionGetViewCategoriesOverviewReturns) {
  return category.child_category_users?.find((user) => user?.role === 'owner') ?? undefined;
}

export function getCategoryDataCollectionURL(
  accountSlug: string,
  category: FunctionGetViewCategoriesOverviewReturns,
  year = getCurrentYear(),
) {
  return `${config.appUrl}${accountSlug}/overview/${year}/${category.parent_category_parent_category_slug}/${category.parent_category_slug}/${category.child_category_slug}`;
}
