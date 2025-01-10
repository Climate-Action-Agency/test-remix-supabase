import { ComponentPropsWithoutRef, useMemo, useState } from 'react';
import { useParams } from '@remix-run/react';
import { CreateAccountResponse, useAccounts, useBasejumpClient } from '@usebasejump/react';
import { Check, ChevronsUpDown, PlusCircle } from 'lucide-react';

import { cn } from '~/@/lib/utils';
import { Button } from '~/@/components/ui/button';
import {
  Command,
  CommandEmpty,
  CommandGroup,
  CommandInput,
  CommandItem,
  CommandList,
  CommandSeparator,
} from '~/@/components/ui/command';
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from '~/@/components/ui/dialog';
import { Popover, PopoverContent, PopoverTrigger } from '~/@/components/ui/popover';
import NewTeamForm from '~/@/components/basejump/NewTeamForm';

type PopoverTriggerProps = ComponentPropsWithoutRef<typeof PopoverTrigger>;

interface AccountSelectorProps extends PopoverTriggerProps {
  placeholder?: string;
  onAccountSelected: (newAccountSlug?: string) => void;
  afterTeamCreated?: (newAccountSlug?: string) => void;
}

export default function AccountSelector({
  onAccountSelected,
  afterTeamCreated,
  placeholder = 'Select a team...',
  className,
}: AccountSelectorProps) {
  const [open, setOpen] = useState(false);
  const [showNewTeamDialog, setShowNewTeamDialog] = useState(false);
  const { team: accountSlug } = useParams();

  const supabaseClient = useBasejumpClient();
  const { data: accounts, mutate } = useAccounts(supabaseClient);

  const { teamAccounts, selectedAccount } = useMemo(
    () => ({
      teamAccounts: accounts
        ?.filter((account) => !account.personal_account)
        .sort((a, b) => a.name.localeCompare(b.name)),
      selectedAccount: accounts?.find((account) => account.slug === accountSlug),
    }),
    [accounts, accountSlug],
  );

  function handleTeamCreated(account: CreateAccountResponse) {
    void mutate();

    setOpen(false);
    setShowNewTeamDialog(false);

    if (afterTeamCreated != null) {
      afterTeamCreated(account.slug);
    }
  }

  return (
    <Dialog open={showNewTeamDialog} onOpenChange={setShowNewTeamDialog}>
      <Popover open={open} onOpenChange={setOpen}>
        <PopoverTrigger asChild>
          <Button
            variant='outline'
            role='combobox'
            aria-expanded={open}
            aria-label='Select a team'
            className={cn('w-[250px] justify-between', className)}
          >
            {selectedAccount?.name ?? placeholder}
            <ChevronsUpDown className='ml-auto h-4 w-4 shrink-0 opacity-50' />
          </Button>
        </PopoverTrigger>
        <PopoverContent className='w-[250px] p-0'>
          <Command>
            <CommandList>
              <CommandInput placeholder='Search teams...' />
              <CommandEmpty>No team found.</CommandEmpty>
              {(teamAccounts?.length ?? 0) > 0 && (
                <CommandGroup heading='Teams'>
                  {teamAccounts?.map((team) => (
                    <CommandItem
                      key={team.account_id}
                      onSelect={() => {
                        setOpen(false);
                        onAccountSelected(team.slug);
                      }}
                      className='text-sm'
                    >
                      {team.name}
                      <Check
                        className={cn(
                          'ml-auto h-4 w-4',
                          selectedAccount?.account_id === team.account_id
                            ? 'opacity-100'
                            : 'opacity-0',
                        )}
                      />
                    </CommandItem>
                  ))}
                </CommandGroup>
              )}
            </CommandList>
            <CommandSeparator />
            <CommandList>
              <CommandGroup>
                <DialogTrigger asChild>
                  <CommandItem
                    onSelect={() => {
                      setOpen(false);
                      setShowNewTeamDialog(true);
                    }}
                  >
                    <PlusCircle className='mr-2 h-5 w-5' />
                    Create new team
                  </CommandItem>
                </DialogTrigger>
              </CommandGroup>
            </CommandList>
          </Command>
        </PopoverContent>
      </Popover>
      <DialogContent>
        <DialogHeader>
          <DialogTitle>Create a new team</DialogTitle>
          <DialogDescription>Create a team to collaborate with others.</DialogDescription>
        </DialogHeader>
        <NewTeamForm
          teamAccounts={teamAccounts ?? []}
          afterCreate={(account: CreateAccountResponse) => {
            void handleTeamCreated(account);
          }}
        />
      </DialogContent>
    </Dialog>
  );
}
