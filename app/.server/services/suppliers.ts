import { PostgrestSingleResponse, SupabaseClient } from '@supabase/supabase-js';
import { Database } from '~/types/supabase';

export type ViewSupplier = Database['public']['Views']['view_suppliers']['Row'];

interface DataPageAndSort {
  pageNr?: number;
  pageSize?: number;
  sortBy?: string;
  sortOrder?: 'asc' | 'desc';
  // filter?: string;
}

// Generic filters: extend this for custom filters that matches the source data better
interface DataFilters {
  search?: string; // Free-form text search
  id?: number;
  name?: string;
}

export async function getSuppliers({
  supabaseClient,
  teamSlug,
  pageAndSort,
  filters,
}: {
  supabaseClient: SupabaseClient<Database>;
  teamSlug: string;
  pageAndSort?: DataPageAndSort;
  filters?: DataFilters;
}): Promise<ViewSupplier[] | null> {
  console.log({
    supabaseClient,
    teamSlug,
    pageAndSort,
    filters,
  });
  await new Promise((resolve) => setTimeout(resolve, 100));
  return [];
}

export async function createSupplier({
  supabaseClient,
  account_id,
  other_account_id,
  include_share = 100,
}: {
  supabaseClient: SupabaseClient<Database>;
  account_id: string;
  other_account_id: string;
  include_share?: number;
}): Promise<PostgrestSingleResponse<null>> {
  console.log({
    supabaseClient,
    account_id,
    other_account_id,
    include_share,
  });
  await new Promise((resolve) => setTimeout(resolve, 100));
  return null;
}
