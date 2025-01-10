import { SupabaseClient } from '@supabase/supabase-js';
import { Database, Tables } from '~/types/supabase';

export type CategorySubmission = Tables<'category_submission'>;
export type ViewCategorySubmission =
  Database['public']['Views']['view_category_submissions']['Row'];

/** Return category_submission rows for parent category */
export async function getParentCategorySubmissions(
  supabaseClient: SupabaseClient<Database>,
  parentCategoryId: number,
  accountId?: string,
  year?: number,
): Promise<ViewCategorySubmission[]> {
  let query = supabaseClient
    .from('view_category_submissions')
    .select('*')
    .eq('parent_category_id', parentCategoryId)
    .or(`account_id.eq.${accountId},account_id.is.null`)
    .order('position', { ascending: true });
  query = year ? query.or(`year.eq.${year},year.is.null`) : query;
  const { data, error } = await query;
  if (error) {
    console.error('Error fetching text content:', error);
    return [];
  }
  return data;
}

/** Return one text content for a category */
export async function getCategorySubmission(
  supabaseClient: SupabaseClient<Database>,
  categoryId: number,
  accountId: string,
  year: number,
): Promise<ViewCategorySubmission | null> {
  const { data, error } = await supabaseClient
    .from('view_category_submissions')
    .select('*')
    .eq('category_id', categoryId)
    .eq('account_id', accountId)
    .eq('year', year)
    .maybeSingle();
  if (error) {
    console.error('Error fetching text content:', error);
    return null;
  }
  return data;
}

/** Create or update text content */
export async function upsertCategorySubmission(
  supabaseClient: SupabaseClient<Database>,
  categoryId: number,
  accountId: string,
  year: number,
  content: string,
): Promise<CategorySubmission | undefined> {
  const { data, error } = await supabaseClient
    .from('category_submission')
    .upsert(
      {
        category_id: categoryId,
        account_id: accountId,
        year: year,
        content: content,
      },
      { onConflict: 'category_id, account_id, year' },
    )
    .select();
  if (error) {
    console.error('Error upserting category submission:', error);
    throw error;
  }
  return data?.[0];
}
