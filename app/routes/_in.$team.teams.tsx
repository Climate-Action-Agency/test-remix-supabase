import React from 'react';
import { ActionFunctionArgs, LoaderFunctionArgs, json } from '@remix-run/node';
import { useLoaderData, useFetcher, Link } from '@remix-run/react';
import { useAccounts, useBasejumpClient } from '@usebasejump/react';
import { Settings, Building, Truck, User } from 'lucide-react';

import { requireUserSession } from '~/session';
import {
  Account,
  getAccount,
  getAllGroupAccounts,
  getAccountMembers,
  AccountMember,
  createAccount,
} from '~/.server/services/accounts';
import { listInvitations, createInvitation, Invitation } from '~/.server/services/users';
import { createSupplier, getSuppliers } from '~/.server/services/suppliers';
import { buildObjectTreeFromArray } from '~/utils/objects';
import ItemTree, { TreeChildNodeData } from '~/components/common/ItemTree';
import { Heading } from '~/@/components/ui/heading';

export async function loader({ request, params }: LoaderFunctionArgs) {
  const { supabaseClient } = await requireUserSession({ request });
  const account = await getAccount(supabaseClient, params.team);
  const allGroupAccounts = await getAllGroupAccounts(supabaseClient, params.team);
  const suppliers = await getSuppliers({ supabaseClient, teamSlug: params.team! });
  const members = account?.account_id
    ? (await getAccountMembers(supabaseClient, account?.account_id)) ?? []
    : [];

  const invitations = account?.account_id
    ? (await listInvitations(supabaseClient, account?.account_id)) ?? []
    : [];

  return {
    account,
    allGroupAccounts,
    members,
    invitations,
    suppliers,
  };
}

const formatDateTime = (dateObj = new Date()) =>
  `${dateObj.getFullYear()}-${`0${dateObj.getMonth() + 1}`.slice(-2)}-${`0${dateObj.getDate()}`.slice(-2)} ${`0${dateObj.getHours()}`.slice(-2)}:${`0${dateObj.getMinutes()}`.slice(-2)}`;

export default function TeamsList() {
  const supabaseClient = useBasejumpClient();
  const { account, allGroupAccounts, members, invitations, suppliers } =
    useLoaderData<typeof loader>();
  const allGroupAccountsTree = buildObjectTreeFromArray(
    allGroupAccounts ?? [],
    'id',
    'parent_account_id',
  );
  const groupMainCompany = allGroupAccountsTree[0];
  const myDepartmentsTree = buildObjectTreeFromArray(
    allGroupAccounts ?? [],
    'id',
    'parent_account_id',
    account?.account_id,
  );

  const { data: yourAccounts } = useAccounts(supabaseClient);
  const yourAccountsSorted = yourAccounts
    ?.filter((account) => account.personal_account === false)
    ?.sort((a, b) => a.name.localeCompare(b.name));
  const fetcher = useFetcher();

  const handleMemberInvite = (userEmail: string) => {
    fetcher.submit({ userEmail }, { method: 'POST' });
  };

  const handleCreateSubAccount = (accountName: string, parentAccountId: string | null) => {
    fetcher.submit({ accountName, parentAccountId }, { method: 'POST' });
  };

  const handleCreateSupplier = (accountName: string, parentAccountId: string | null) => {
    fetcher.submit(
      { accountName, customerAccountId: parentAccountId, parentAccountId: null },
      { method: 'POST' },
    );
  };

  const mySuppliersTree = buildObjectTreeFromArray(
    suppliers ?? [],
    'id',
    'account_id',
    account?.account_id,
  );

  return (
    <>
      <Heading level='h1'>Organization & Teams</Heading>

      <Heading level='h2'>{'Current team: ' + account?.name}</Heading>
      <ItemTree
        title='Members'
        items={[...members, ...invitations]}
        keyFunction={(item: TreeChildNodeData) =>
          (item as AccountMember).user_id ?? (item as Invitation).token
        }
        nameFunction={(item: TreeChildNodeData) => {
          const name =
            item.name !== undefined
              ? `${item.name} ${(item as AccountMember).email}`
              : `invited ${(item as Invitation).account_role} ${formatDateTime(new Date((item as Invitation).created_at!))}`;
          return name;
        }}
        icon={<User className='h-4 w-4' />}
        addTitle='Invite New Member'
        addButtonLabel='Send Invite'
        addInputType='email'
        onAdd={handleMemberInvite}
        ItemComponent={UserItemNode}
      />
      <ItemTree
        title='Sub-Teams'
        items={myDepartmentsTree}
        icon={<Building className='h-4 w-4' />}
        addTitle='Create New Sub-Team'
        onAdd={handleCreateSubAccount}
        parentAccountId={account?.account_id}
        ItemComponent={AccountWithOwnerItemNode}
      />
      <ItemTree
        title='Suppliers'
        items={mySuppliersTree}
        icon={<Truck className='h-4 w-4' />}
        addTitle='Create New Supplier'
        onAdd={handleCreateSupplier}
        parentAccountId={account?.account_id}
        childrenCanAdd={false}
        ItemComponent={AccountWithOwnerItemNode}
      />

      <Heading level='h2'>Company Group</Heading>
      <ItemTree
        title={(groupMainCompany?.name as string) ?? '(No company found)'}
        items={groupMainCompany?.children}
        icon={<Building className='h-4 w-4' />}
        addTitle='Create New Sub-Team'
        onAdd={handleCreateSubAccount}
        parentAccountId={groupMainCompany?.id as string}
        ItemComponent={AccountWithOwnerItemNode}
      />

      <Heading level='h2'>Your teams</Heading>
      <ItemTree
        title='All teams you belong to (click on name to switch to it)'
        items={yourAccountsSorted}
        keyFunction={(item: TreeChildNodeData) => (item as Account).account_id}
        addTitle='Create New Organization'
        ItemComponent={AccountItemNode}
      />
    </>
  );
}

const UserItemNode: React.FC<{ item: TreeChildNodeData }> = ({ item }) => (
  <div className='item select-none'>
    {item.name} <span className='text-xs text-slate-400'>&lt;{item.email}&gt;</span>
  </div>
);

const AccountWithOwnerItemNode: React.FC<{ item: TreeChildNodeData }> = ({ item }) => (
  <div className='item select-none'>
    {item.name}{' '}
    <span className='text-xs text-slate-400'>
      <User className='h-4 w-4 inline' />
      {item.primary_owner_personal_account_name} &lt;{item.primary_owner_user_email}&gt;
    </span>
  </div>
);

const AccountItemNode: React.FC<{ item: TreeChildNodeData }> = ({ item }) => (
  <div>
    <Link to={`/${item.slug}/teams`} className='highlight-hover'>
      {item.name}
    </Link>
    <Link to={`/${item.slug}/users`}>
      <Settings className='h-4 w-4 inline-block ml-1' />
    </Link>
  </div>
);

export const action = async ({ request, params }: ActionFunctionArgs) => {
  const { supabaseClient } = await requireUserSession({ request });
  const account = await getAccount(supabaseClient, params.team);
  if (request.method === 'POST') {
    const formData = await request.formData();
    const formDataFields = Object.fromEntries(formData);
    // Invite new member by email
    if (formDataFields.userEmail) {
      return await createInvitation(
        supabaseClient,
        account?.account_id ?? '',
        'member',
        formDataFields.userEmail as string,
      );
    }
    // Create new sub-account
    if (formDataFields.accountName) {
      const newAccount: Account = await createAccount({
        supabaseClient,
        parentAccountId: (formDataFields.parentAccountId as string) ?? account?.account_id ?? '',
        name: formDataFields.accountName as string,
      });
      // Create new supplier
      if (formDataFields.customerAccountId) {
        return createSupplier({
          supabaseClient,
          account_id: formDataFields.customerAccountId as string,
          other_account_id: newAccount?.account_id,
        });
      }
    }
    return json({ success: true });
  }
};
