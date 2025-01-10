import { Button } from '~/@/components/ui/button';
import { usePersonalAccount, useBasejumpClient } from '@usebasejump/react';
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from '~/@/components/ui/dropdown-menu';
import { Link } from '@remix-run/react';
import { UserIcon } from 'lucide-react';

import LogOutButton from './LogOutButton';

export default function UserAccountButton() {
  const supabaseClient = useBasejumpClient();
  const { data: personalAccount } = usePersonalAccount(supabaseClient);

  return (
    <DropdownMenu>
      <DropdownMenuTrigger asChild>
        <Button variant='default'>
          <UserIcon />
        </Button>
      </DropdownMenuTrigger>
      <DropdownMenuContent className='w-56' align='end' forceMount>
        <DropdownMenuLabel className='font-normal'>
          <div className='flex flex-col space-y-1'>
            <p className='text-sm font-medium leading-none'>{personalAccount?.name}</p>
            <p className='text-xs leading-none text-muted-foreground'>{personalAccount?.email}</p>
          </div>
        </DropdownMenuLabel>
        <DropdownMenuSeparator />
        <DropdownMenuGroup>
          <DropdownMenuItem asChild>
            <Link to='/settings' className='cursor-pointer'>
              My Settings
            </Link>
          </DropdownMenuItem>
          <DropdownMenuItem asChild>
            <Link to='/teams' className='cursor-pointer'>
              Organization & Teams
            </Link>
          </DropdownMenuItem>
        </DropdownMenuGroup>
        <DropdownMenuSeparator />
        <DropdownMenuItem>
          <LogOutButton />
        </DropdownMenuItem>
      </DropdownMenuContent>
    </DropdownMenu>
  );
}
