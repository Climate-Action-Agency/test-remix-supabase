import React from 'react';
import { Link, useLocation, useNavigation, useParams } from '@remix-run/react';
import { type LucideIcon, FileInput, User, Ungroup } from 'lucide-react';

import { cn } from '~/@/lib/utils';
import { getCurrentYear } from '~/utils/dates';

interface LinkWithIcon {
  title: string;
  icon?: LucideIcon;
  href?: string;
  label?: string; // e.g. message count
  variant?: string;
  isHeader?: boolean;
  featureFlags?: string[];
  isVisibleForSuperAdmin?: boolean;
}

export function getAllMenuItems(accountSlug?: string) {
  const currentYear = getCurrentYear();
  return [
    { title: 'Data Collection', isHeader: true },
    {
      title: 'Sustainability Report',
      href: `/${accountSlug}/overview/${currentYear}/esrs`,
      icon: FileInput,
    },
    { title: 'Settings', isHeader: true },
    {
      title: 'Organization & Teams',
      href: `/${accountSlug}/teams`,
      icon: Ungroup,
    },
    {
      title: 'My Settings',
      href: `/${accountSlug}/settings`,
      icon: User,
    },
  ];
}

export function getNavigationMenuItems(accountSlug: string): LinkWithIcon[] {
  const allMenuItems = getAllMenuItems(accountSlug);
  return allMenuItems;
}

interface NavigationMenuProps {
  setIsMenuOpen: React.Dispatch<React.SetStateAction<boolean>>;
}

export default function NavigationMenu({ setIsMenuOpen }: NavigationMenuProps): React.ReactElement {
  const { team: accountSlug } = useParams();
  const menuItems = getNavigationMenuItems(accountSlug!);
  const location = useLocation();
  const navigation = useNavigation();
  const [clickedMenuItemTitle, setClickedMenuItemTitle] = React.useState<string | undefined>();

  const currentMenuItem = menuItems.find(
    (menuItem) => menuItem.href !== undefined && location.pathname.startsWith(menuItem.href),
  );

  return (
    <nav className='w-full'>
      {menuItems.map((menuItem, index) =>
        menuItem.isHeader ? (
          <div key={index} className='mt-4 mb-2 font-bold text-gray-200'>
            {menuItem.title}
          </div>
        ) : (
          <Link
            key={index}
            to={menuItem.href ?? ''}
            className={cn(
              'justify-start flex items-center h-9 text-gray-100 px-1 rounded-sm hover:bg-background/10',
              clickedMenuItemTitle === menuItem.title &&
                navigation.state !== 'idle' &&
                'bg-background/20 hover:bg-background/20 text-gray-400 animate-pulse',
              currentMenuItem === menuItem && 'bg-background/20 hover:bg-background/30',
              menuItem.variant === 'default' &&
                'dark:bg-muted dark:text-white dark:hover:bg-muted dark:hover:text-white',
              (menuItem.variant === 'disabled' || !accountSlug) && 'opacity-40 pointer-events-none',
            )}
            onClick={() => {
              setClickedMenuItemTitle(menuItem.title);
              setIsMenuOpen(false);
            }}
          >
            {menuItem.icon && <menuItem.icon className='mr-2 h-4 w-4' />}
            {menuItem.title}
            {menuItem.label !== undefined && (
              <span
                className={cn(
                  'ML-auto',
                  menuItem.variant === 'default' && 'text-background dark:text-white',
                )}
              >
                {menuItem.label}
              </span>
            )}
          </Link>
        ),
      )}
    </nav>
  );
}
