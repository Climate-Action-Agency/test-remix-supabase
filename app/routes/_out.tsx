import React from 'react';
import { LoaderFunctionArgs } from '@remix-run/node';
import { Outlet, useNavigate } from '@remix-run/react';
import { Card, CardContent, CardFooter, CardHeader, CardTitle } from '~/@/components/ui/card';

import config from '~/config/config';
import { createClient } from '~/@/utils/supabase/client';
import useMagicLinkAuth from '~/hooks/useMagicLinkAuth';
import { requireLoggedOut } from '~/session';
export { meta } from './_in';

export async function loader({ request }: LoaderFunctionArgs) {
  await requireLoggedOut({ request });
  return null;
}

export default function LoggedOutLayout(): React.ReactElement {
  const supabaseClient = createClient();
  useMagicLinkAuth(supabaseClient);

  const navigate = useNavigate();
  if (typeof window !== 'undefined') {
    void supabaseClient?.auth.getUser().then((user) => {
      const cookieNames = window.document.cookie.split('; ').map((cookie) => cookie.split('=')[0]);
      if (user?.error?.toString().includes('AuthApiError') && cookieNames?.[0] !== '') {
        // Delete all cookies
        for (const cookieName of cookieNames) {
          document.cookie = `${cookieName}=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/`;
        }
        navigate('/');
      }
    });
  }

  return (
    <div className='mx-auto max-w-7xl p-3'>
      <div className='min-h-12'>
        <div className='flex items-center justify-center h-screen'>
          <Card className='w-96'>
            <CardHeader>
              <CardTitle>{config.appName}</CardTitle>
            </CardHeader>
            <CardContent>
              <Outlet />
            </CardContent>
            <CardFooter>
              <p className='text-xs text-center text-gray-300 w-full'>{config.appCopyright}</p>
            </CardFooter>
          </Card>
        </div>
      </div>
    </div>
  );
}
