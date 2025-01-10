import { useState, useEffect, ChangeEvent } from 'react';
import { useFetcher } from '@remix-run/react';
import { CreateAccountResponse, GetAccountsResponse } from '@usebasejump/react';

import config from '~/config/config';
import { Button } from '~/@/components/ui/button';
import { Input } from '~/@/components/ui/input';
import {
  Select,
  SelectContent,
  SelectGroup,
  SelectItem,
  SelectLabel,
  SelectTrigger,
  SelectValue,
} from '~/@/components/ui/select';
import { action } from '~/routes/api.team';
import toSlug from '~/utils/toSlug';

interface Props {
  afterCreate?: (account: CreateAccountResponse) => void;
  teamAccounts: GetAccountsResponse;
}

export default function NewTeamForm({ afterCreate, teamAccounts }: Props) {
  const fetcher = useFetcher<typeof action>();
  const isCreating = fetcher.state !== 'idle';
  const [inputs, setInputs] = useState({ name: '', slug: '' });
  const handleInputChange = ({ target }: ChangeEvent<HTMLInputElement>) => {
    const newValues = {
      [target.name]: target.value,
      slug: target.name === 'name' ? toSlug(target.value)! : target.value,
    };
    setInputs({ ...inputs, ...newValues });
  };

  useEffect(() => {
    if (fetcher.data?.data) {
      afterCreate && afterCreate(fetcher.data.data);
    }
  }, [fetcher.data]);

  return (
    <fetcher.Form method='post' action='/api/team'>
      <label>Team Name</label>
      <Input name='name' placeholder='My Team' value={inputs.name} onChange={handleInputChange} />

      <label className='block mt-2'>Unique identifier</label>
      <div className='flex items-center space-x-2'>
        <span className='text-sm leading-none'>{config.appUrl}</span>
        <Input name='slug' placeholder='my-team' value={inputs.slug} onChange={handleInputChange} />
      </div>

      {fetcher.data?.errors.map((error, index) => (
        <p key={index} className='text-red-500 mb-2'>
          {error?.message}
        </p>
      ))}

      {teamAccounts?.length > 0 && (
        <Select name='parent_account_id'>
          <label className='block mt-2'>Optional parent team</label>
          <SelectTrigger className='w-[180px]'>
            <SelectValue placeholder='No parent team' />
          </SelectTrigger>
          <SelectContent>
            <SelectGroup>
              <SelectLabel>Possible parent teams</SelectLabel>
              {teamAccounts.map((team) => (
                <SelectItem key={team.account_id} value={team.account_id}>
                  {team.name}
                </SelectItem>
              ))}
            </SelectGroup>
          </SelectContent>
        </Select>
      )}

      <Button type='submit' className='mt-2'>
        {isCreating ? 'Creating team' : 'Create Team'}
      </Button>
    </fetcher.Form>
  );
}
