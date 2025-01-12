'use client';

import { ReactElement, useState } from 'react';
import { Link } from '@remix-run/react';

import { Button } from '~/@/components/ui/button';
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from '~/@/components/ui/dialog';
import { Input } from '~/@/components/ui/input';
import { Avatar, AvatarFallback } from '~/@/components/ui/avatar';
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from '~/@/components/ui/select';
import { useFetcher } from '@remix-run/react';
import { Account, AccountMember, GetParentAccountsReturns } from '~/.server/services/accounts';
import { FunctionGetViewCategoriesOverviewReturns } from '~/.server/services/categories';

export default function MemberSelector({
  members,
  childAccounts,
  account,
  category,
  openButton,
}: {
  members?: AccountMember[];
  childAccounts?: GetParentAccountsReturns;
  account?: Account;
  category: FunctionGetViewCategoriesOverviewReturns | null;
  openButton?: ReactElement;
}) {
  const [open, setOpen] = useState(false);
  const [searchQuery, setSearchQuery] = useState('');
  const fetcher = useFetcher();

  const filteredMembers =
    members?.filter((member) => member.name.toLowerCase().includes(searchQuery.toLowerCase())) ??
    [];

  const filteredAccounts =
    childAccounts?.filter(
      (childAccount) =>
        childAccount.name.toLowerCase().includes(searchQuery.toLowerCase()) &&
        childAccount.id !== account?.account_id, // Don't list self
    ) ?? [];

  return (
    <Dialog open={open} onOpenChange={setOpen}>
      <DialogTrigger asChild>
        {openButton ?? <Button variant='outline'>Add Members</Button>}
      </DialogTrigger>
      <DialogContent className='sm:max-w-[600px]'>
        <DialogHeader>
          <DialogTitle>Add Members & Teams</DialogTitle>
        </DialogHeader>
        <div className='space-y-4'>
          <Input
            placeholder='search'
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            className='w-full'
          />

          <div className='space-y-4 max-h-[80vh] overflow-auto'>
            {filteredMembers.length > 0 && (
              <>
                <h3 className='text-sm text-muted-foreground'>Members</h3>
                <div className='space-y-2  max-h-[70vh] overflow-auto'>
                  {filteredMembers.map((member) => (
                    <fetcher.Form
                      key={member.user_id}
                      method='post'
                      onSubmit={() => setOpen(false)}
                    >
                      <div className='flex items-center justify-between py-2'>
                        <div className='flex items-center gap-3'>
                          <Avatar className='h-8 w-8'>
                            <AvatarFallback className='bg-primary/10'>
                              {member.name.substring(0, 2)}
                            </AvatarFallback>
                          </Avatar>
                          <div className='flex flex-col'>
                            <span className='text-sm font-medium'>{member.name}</span>
                            <span className='text-sm text-muted-foreground'>{member.email}</span>
                          </div>
                        </div>
                        <div className='flex items-center gap-3'>
                          <span className='text-sm'>{account?.name}</span>

                          <Select
                            name='account_role'
                            defaultValue={member.account_role.toLowerCase()}
                          >
                            <SelectTrigger className='w-[130px]'>
                              <SelectValue />
                            </SelectTrigger>
                            <SelectContent>
                              <SelectItem value='owner'>Owner</SelectItem>
                              <SelectItem value='member'>Contributor</SelectItem>
                              <SelectItem value='reviewer'>Reviewer</SelectItem>
                            </SelectContent>
                          </Select>

                          <input type='hidden' name='user_id' value={member.user_id} />
                          <input type='hidden' name='account_id' value={account?.account_id} />
                          <input type='hidden' name='account_slug' value={account?.slug} />
                          <input
                            type='hidden'
                            name='category_id'
                            value={category?.child_category_id}
                          />
                          <input
                            type='hidden'
                            name='category_slug'
                            value={category?.child_category_slug}
                          />
                          <Button variant='default' size='sm' type='submit'>
                            Add
                          </Button>
                        </div>
                      </div>
                    </fetcher.Form>
                  ))}
                </div>
              </>
            )}

            {filteredAccounts.length > 0 && (
              <div className='space-y-2 max-h-[70vh] overflow-auto'>
                {filteredAccounts.map((team) => (
                  <div key={team.id} className='flex items-center justify-between py-2'>
                    <div className='flex items-center gap-3'>
                      <Avatar className='h-8 w-8'>
                        <AvatarFallback className='bg-primary/10'>
                          {team.name.substring(0, 2)}
                        </AvatarFallback>
                      </Avatar>
                      <div className='flex flex-col'>
                        <span className='text-sm font-medium'>{team.name}</span>
                      </div>
                    </div>
                    <div className='flex items-center gap-3'>
                      <span className='text-sm w-[130px] text-center'>{team.language || 'EN'}</span>
                      <fetcher.Form method='post' onSubmit={() => setOpen(false)}>
                        <input type='hidden' name='sub_account_id' value={team.id} />
                        <input type='hidden' name='account_id' value={account?.account_id} />
                        <input type='hidden' name='account_slug' value={account?.slug} />
                        <input
                          type='hidden'
                          name='category_id'
                          value={category?.child_category_id}
                        />
                        <input
                          type='hidden'
                          name='category_slug'
                          value={category?.child_category_slug}
                        />
                        <Button variant='default' size='sm' type='submit'>
                          Add
                        </Button>
                      </fetcher.Form>
                    </div>
                  </div>
                ))}
              </div>
            )}
          </div>

          <div className='mt-2 text-sm text-muted-foreground'>
            Can’t find the team/member you’re looking for? Add them in{' '}
            <Link to={`/${account?.slug}/teams`} className='text-primary underline'>
              Organization &amp; Teams
            </Link>
            .
          </div>
        </div>
      </DialogContent>
    </Dialog>
  );
}
