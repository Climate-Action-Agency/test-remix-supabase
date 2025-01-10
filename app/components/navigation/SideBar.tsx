import React, { useState } from 'react';
import { useNavigate, useLocation, useParams } from '@remix-run/react';
import { Menu, X } from 'lucide-react';

import AccountSelector from '~/@/components/basejump/AccountSelector';
import NavigationMenu from '~/components/navigation/NavigationMenu';
import AppVersion from '~/components/common/AppVersion';

const SidebarMenu: React.FC = () => {
  const navigate = useNavigate();
  const location = useLocation();
  const { team: currentAccountSlug } = useParams();

  function selectAccount(newAccountSlug?: string) {
    if (newAccountSlug) {
      const newPath =
        currentAccountSlug !== undefined
          ? location.pathname.replace(currentAccountSlug, newAccountSlug)
          : `/${newAccountSlug}`;
      navigate(newPath);
    }
  }

  const [isMenuOpen, setIsMenuOpen] = useState(false);

  const toggleMenu = () => {
    setIsMenuOpen(!isMenuOpen);
  };

  const innerMenu = (
    <>
      <div id='account-and-user' className='flex'>
        <AccountSelector onAccountSelected={selectAccount} afterTeamCreated={selectAccount} />
      </div>
      <NavigationMenu setIsMenuOpen={setIsMenuOpen} />
      <div className='grow'></div>
      <AppVersion />
    </>
  );

  return (
    <>
      {/* Desktop Sidebar */}
      <aside className='hidden md:flex flex-col w-64 h-screen p-4 bg-primary'>{innerMenu}</aside>

      {/* Mobile Menu Toggle Button */}
      <button
        className='fixed md:hidden p-2 m-2 text-primary bg-white/60 rounded-full right-0'
        onClick={toggleMenu}
      >
        <Menu className='h-6 w-6' />
      </button>

      {/* Mobile Sidebar */}
      <aside
        className={`fixed p-4 transform ${
          isMenuOpen ? 'translate-x-0' : 'translate-x-full'
        } transition-transform duration-300 ease-in-out md:hidden z-50 w-64 h-screen bg-primary right-0`}
      >
        {isMenuOpen && (
          <button className='md:hidden mb-4 text-gray-100' onClick={toggleMenu}>
            <X className='h-6 w-6' />
          </button>
        )}
        {innerMenu}
      </aside>
    </>
  );
};

export default SidebarMenu;
