import { SupabaseClient } from '@supabase/supabase-js';

import { Database } from '~/types/supabase';
import toSlug from '~/utils/toSlug';

export type AccountRole = Database['public']['Enums']['account_role'];

// This is just 'json': type GetAccountReturns = Database['public']['Functions']['get_account_by_slug']['Returns'] | null;
// As returned from RPC 'get_account_by_slug':
export interface Account {
  account_id: string;
  account_role: string | null;
  name: string;
  slug: string;
  is_primary_owner: boolean | null;
  personal_account: boolean;
  created_at: string;
  updated_at: string;
  metadata: Record<string, string | number>;
  billing_enabled: boolean;
  billing_status: null;
}

// Fields we added to 'accounts' table, maybe move to 'public_metadata' field?
export interface AccountExtended extends Account {
  parent_account_id: string | null;
  organization_number: string | null;
  business_description: string | null;
  website_url: string | null;
  nace_category_id: number | null;
  emission_factor_id: number | null;
  // include_emissions: number | null;
}

// Exactly like 'accounts' table
export interface AccountRaw {
  id: string;
  name: string;
  slug: string;
}

export async function getAccountById(
  supabaseClient: SupabaseClient<Database>,
  accountId: string,
): Promise<Account | null> {
  const { data: account } = await supabaseClient.rpc('get_account', {
    account_id: accountId,
  });
  return account as Account | null;
}

export async function getAccountBySlug(
  supabaseClient: SupabaseClient<Database>,
  accountSlug: string,
): Promise<Account | null> {
  const { data: account } = await supabaseClient.rpc('get_account_by_slug', {
    slug: accountSlug,
  });
  return account as Account | null;
}

/** Get the named account, with user’s first non-personal account as fallback. */
export async function getAccount(
  supabaseClient: SupabaseClient<Database>,
  slug?: string,
): Promise<Account | null> {
  const getResults = await supabaseClient.rpc('get_accounts');
  const accounts = getResults.data as Account[] | null;
  if (accounts?.length) {
    let account: Account | undefined;
    if (slug) {
      account = accounts?.find((account: Account) => account.slug === slug);
    } else {
      // User’s first non-personal account as fallback
      account = accounts?.find((account: Account) => !account.personal_account);
    }
    if (!account) {
      console.error('No account found');
      return null;
    }
    // Needed to get 'metadata' (actually 'public_metadata')
    const fullAccount = await supabaseClient?.rpc('get_account_by_slug', {
      slug: account?.slug,
    });
    return (fullAccount?.data as Account | null) ?? null;
  }
  return null;
}

type GetAllGroupAccountsReturns =
  | Database['public']['Functions']['get_all_group_accounts']['Returns']
  | null;

/** All accounts in company group, including sibling accounts. */
export async function getAllGroupAccounts(
  supabaseClient: SupabaseClient<Database>,
  accountSlug?: string,
): Promise<GetAllGroupAccountsReturns> {
  const { data, error } = await supabaseClient.rpc('get_all_group_accounts', {
    current_account_slug: accountSlug ?? '',
  });
  if (error) {
    throw error;
  }
  return data;
}

export type GetParentAccountsReturns =
  | Database['public']['Functions']['get_parent_accounts']['Returns']
  | null;

/** Parent accounts, i.e. all accounts “above” the childAccount. */
export async function getParentAccounts(
  supabaseClient: SupabaseClient<Database>,
  childAccountSlug?: string,
): Promise<GetParentAccountsReturns> {
  const { data, error } = await supabaseClient.rpc('get_parent_accounts', {
    child_account_slug: childAccountSlug ?? '',
  });
  if (error) {
    throw error;
  }
  return data;
}

/** Child accounts, i.e. all accounts “below” the parentAccount. */
export async function getChildAccounts(
  supabaseClient: SupabaseClient<Database>,
  parentAccountSlug?: string,
): Promise<GetParentAccountsReturns> {
  const { data, error } = await supabaseClient.rpc('get_child_accounts', {
    parent_account_slug: parentAccountSlug ?? '',
  });
  if (error) {
    throw error;
  }
  return data;
}

export type FunctionUpdateAccountArguments =
  Database['public']['Functions']['update_account']['Args'];
export type FunctionUpdateAccountArgumentsWithoutAccount = Omit<
  FunctionUpdateAccountArguments,
  'account_id'
>;
export type FunctionUpdateAccountReturns =
  Database['public']['Functions']['update_account']['Returns'];

export async function updateAccount(
  supabaseClient: SupabaseClient<Database>,
  slug: string,
  args: FunctionUpdateAccountArgumentsWithoutAccount,
): Promise<FunctionUpdateAccountReturns> {
  const getResults = await supabaseClient?.rpc('get_account_by_slug', {
    slug,
  });
  const account = getResults.data as Account | null;
  if (account === null) {
    throw new Error('Account not found');
  }
  const updateResults = await supabaseClient?.rpc('update_account', {
    ...args,
    account_id: account?.account_id,
  });
  return updateResults.data;
}

export type FunctionCreateAccountReturns =
  Database['public']['Functions']['create_account']['Returns'];

export async function createAccount({
  supabaseClient,
  parentAccountId,
  name,
  slug,
}: {
  supabaseClient: SupabaseClient<Database>;
  parentAccountId: string | null;
  name: string;
  slug?: string;
}): Promise<Account> {
  const newSlug = slug ?? toSlug(name)!;
  const { data, error } = await supabaseClient.rpc('create_account', {
    name,
    slug: newSlug,
  });
  if (error) throw error;
  if (data && parentAccountId) {
    await supabaseClient.rpc('set_parent_account', {
      child_account_id: (data as unknown as Account).account_id,
      parent_account_id: parentAccountId,
    });
  }
  return data;
}

export interface AccountMember {
  user_id: string;
  account_role: 'owner' | 'member';
  name: string;
  email: string;
  is_primary_owner: boolean;
}

type GetAccountMembersReturns = AccountMember[] | null;

export async function getAccountMembers(
  supabaseClient: SupabaseClient<Database>,
  accountId: string,
): Promise<GetAccountMembersReturns> {
  const { data, error } = await supabaseClient.rpc('get_account_members', {
    account_id: accountId,
  });
  if (error) {
    throw error;
  }
  return data as GetAccountMembersReturns;
}

export interface CategoryMember {
  status: string;
  id: string;
  name: string;
  slug: string;
}

export async function getAccountsWithCategory({
  supabaseClient,
  categorySlug,
}: {
  supabaseClient: SupabaseClient<Database>;
  categorySlug: string;
}): Promise<CategoryMember[]> {
  const { data, error } = await supabaseClient.rpc('get_accounts_with_category', {
    category_slug: categorySlug,
  });

  if (error) {
    throw error;
  }
  return data as unknown as CategoryMember;
}
