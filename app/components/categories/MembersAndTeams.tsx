import { useOutletContext } from '@remix-run/react';

import { type Account } from '~/.server/services/accounts';
import { SubCategoryLoaderData } from '~/.server/loaders/formDataCategorySubmission';
import MemberSelector from '~/@/components/basejump/MemberSelector';
import { Button } from '~/@/components/ui/button';
import { Avatar, AvatarFallback } from '~/@/components/ui/avatar';
import { useFetcherWithToast } from '~/hooks/useFetcherWithToast';
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from '~/@/components/ui/select';

export default function MembersAndTeams() {
  const context = useOutletContext<SubCategoryLoaderData>();
  const { account, childAccounts, members, category } = context;

  const userRoleFetcher = useFetcherWithToast({ successTitle: 'User role updated' });

  const handleChangeAccountRole = (userId: string, value: string): void => {
    const formData = new FormData();
    formData.append('user_id', userId);
    formData.append('account_id', category.account_id);
    formData.append('category_id', category.child_category_id);
    if (value === 'remove') {
      if (!window.confirm('Are you sure you want to remove this member from this category?')) {
        return;
      }
      void userRoleFetcher.submit(formData, { method: 'DELETE' });
      return;
    } else {
      formData.append('account_role', value);
      void userRoleFetcher.submit(formData, { method: 'PATCH' });
    }
  };

  const accountRoleFetcher = useFetcherWithToast({ successTitle: 'Sub-teams updated' });

  const handleRemoveSubTeam = (account: Account): void => {
    if (!window.confirm('Are you sure you want to remove this sub-team from this category?')) {
      return;
    }
    const formData = new FormData();
    formData.append('account_id', account.account_id);
    formData.append('category_id', category.child_category_id);
    void accountRoleFetcher.submit(formData, { method: 'DELETE' });
  };

  return (
    <>
      <div className='w-full max-w-4xl mx-auto px-4'>
        <h2 className='text-xl font-semibold'>Members & Teams</h2>

        <h3 className='mb-0'>Members</h3>
        <p className='text-sm text-muted-foreground mb-4'>Reports data for team {account?.name}.</p>
        <userRoleFetcher.Form className='border rounded-lg divide-y overflow-x-auto'>
          {category.child_category_users
            .filter((a) => a)
            .map((member) => (
              <div key={member?.id} className='flex items-center justify-between p-4 gap-4'>
                <div className='flex items-center gap-3'>
                  <Avatar className='h-8 w-8'>
                    <AvatarFallback className='bg-primary/10'>
                      {member?.name.substring(0, 2)}
                    </AvatarFallback>
                  </Avatar>
                  <div className='flex flex-col'>
                    <span className='font-medium'>{member?.name}</span>
                    <span className='text-sm text-muted-foreground'>{member?.email}</span>
                  </div>
                </div>
                <div className='flex items-center gap-4'>
                  <Select
                    name='account_role'
                    defaultValue={member?.role}
                    onValueChange={(value) => handleChangeAccountRole(member?.id, value)}
                    disabled={account?.account_role !== 'owner'}
                  >
                    <SelectTrigger className='w-[130px]'>
                      <SelectValue placeholder='Select a role' />
                    </SelectTrigger>
                    <SelectContent>
                      <SelectItem value='member'>Contributor</SelectItem>
                      <SelectItem value='owner'>Owner</SelectItem>
                      <SelectItem value='remove'>Remove</SelectItem>
                    </SelectContent>
                  </Select>
                </div>
              </div>
            ))}
        </userRoleFetcher.Form>
        <MemberSelector
          members={members}
          account={account ?? undefined}
          category={category}
          openButton={
            <Button variant='outline' className='mt-6' disabled={account?.account_role !== 'owner'}>
              Add Member
            </Button>
          }
        />
      </div>

      <div className='w-full max-w-4xl mx-auto p-4'>
        <h3 className='mb-0'>Sub-Teams</h3>
        <p className='text-sm text-muted-foreground mb-4'>
          Data from these teams will be aggregated up into {account?.name}.
        </p>
        <div className='border rounded-lg divide-y overflow-x-auto'>
          {category.child_category_accounts
            .filter((a) => a)
            .map((childAccount) => (
              <div
                key={childAccount?.account_id}
                className='flex items-center justify-between p-4 gap-4'
              >
                <div className='flex items-center gap-3'>
                  <Avatar className='h-8 w-8'>
                    <AvatarFallback className='bg-primary/10'>
                      {childAccount?.account_name.substring(0, 2)}
                    </AvatarFallback>
                  </Avatar>
                  <div className='flex flex-col'>
                    <span className='font-medium'>{childAccount?.account_name}</span>
                  </div>
                </div>
                <div className='flex items-center gap-4'>
                  <Button
                    type='button'
                    variant='outline'
                    disabled={account?.account_role !== 'owner'}
                    onClick={() => handleRemoveSubTeam(childAccount)}
                  >
                    Remove
                  </Button>
                </div>
              </div>
            ))}
        </div>
        <MemberSelector
          childAccounts={childAccounts}
          account={account ?? undefined}
          category={category}
          openButton={
            <Button variant='outline' className='mt-6' disabled={account?.account_role !== 'owner'}>
              Add Sub-Team
            </Button>
          }
        />
      </div>
    </>
  );
}

export const handle: TabHandle = {
  name: 'members',
};
