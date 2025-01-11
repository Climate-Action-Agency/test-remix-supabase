import { SupabaseClient } from '@supabase/supabase-js';

import { Database } from '~/types/supabase';
import config from '~/config/config';
import { sendEmailUserInvitation } from '~/.server/services/email';
import { getAccountById } from '~/.server/services/accounts';

export type UserRole = 'member' | 'owner' | 'reviewer';
export type UserRoleCreate = UserRole | 'primary_owner';

export type Invitation = Database['basejump']['Tables']['invitations']['Row'];

export async function listInvitations(
  supabaseClient: SupabaseClient<Database>,
  accountId: string,
): Promise<Invitation[]> {
  const { data } = await supabaseClient.rpc('get_account_invitations', {
    account_id: accountId,
  });
  return data as Invitation[];
}

export async function createInvitation(
  supabaseClient: SupabaseClient<Database>,
  accountId: string,
  accountRole: UserRole,
  toEmail?: string,
): Promise<{ token: string }> {
  const results = await supabaseClient.rpc('create_invitation', {
    account_id: accountId,
    account_role: accountRole,
    invitation_type: 'one_time',
  });
  const data = results.data as { token: string };
  if (toEmail) {
    const {
      data: { user },
    } = await supabaseClient.auth.getUser();
    const account = await getAccountById(supabaseClient, accountId);
    await sendEmailUserInvitation(toEmail, {
      fromEmail: user?.email ?? '',
      accountName: account?.name ?? '',
      inviteUrl: `${config.appUrl}invite/${data.token}`,
    });
  }
  return data;
}

export async function removeUser(
  supabaseClient: SupabaseClient<Database>,
  accountId: string,
  userId: string,
): Promise<void> {
  await supabaseClient.rpc('remove_account_member', {
    account_id: accountId,
    user_id: userId,
  });
}

export async function changeRole(
  supabaseClient: SupabaseClient<Database>,
  accountId: string,
  userId: string,
  accountRole: UserRoleCreate,
) {
  const { data } = await supabaseClient.rpc('update_account_user_role', {
    account_id: accountId,
    user_id: userId,
    new_account_role: accountRole === 'primary_owner' ? 'owner' : accountRole,
    make_primary_owner: accountRole === 'primary_owner',
  });
  return data;
}
