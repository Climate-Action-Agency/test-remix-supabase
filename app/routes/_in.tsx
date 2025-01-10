import { Outlet, useRouteError, MetaFunction } from '@remix-run/react';
import { BasejumpUserSession } from '@usebasejump/react';

import { createClient } from '~/@/utils/supabase/client';
import { buildMeta } from '~/utils/meta';
import { Card, CardContent, CardHeader, CardTitle } from '~/@/components/ui/card';
import SideBar from '~/components/navigation/SideBar';

export const meta: MetaFunction = (args) => buildMeta({ args });

function LoggedInLayoutContainer({ children }: { children?: React.ReactNode }) {
  const supabaseClient = createClient();

  return (
    <BasejumpUserSession supabaseClient={supabaseClient}>
      <div className='flex'>
        <SideBar />
        <main id='right-column' className='flex-1 p-4 max-h-screen overflow-auto'>
          <Outlet context={{ supabase: supabaseClient }} />
          {children}
        </main>
      </div>
    </BasejumpUserSession>
  );
}

export default function LoggedInLayout() {
  return <LoggedInLayoutContainer />;
}

export function ErrorBoundary() {
  const error = useRouteError() as Error;
  const title = error.status === 404 ? 'Not Found' : 'Sorry, there was an error';
  console.warn('ErrorBoundary (_in)', error);
  return (
    <LoggedInLayoutContainer>
      <Card className='w-[380px]'>
        <CardHeader>
          <CardTitle>{title}</CardTitle>
        </CardHeader>
        <CardContent>
          <p>{error.message ?? error.data}</p>
        </CardContent>
      </Card>
    </LoggedInLayoutContainer>
  );
}
