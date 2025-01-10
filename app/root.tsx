import type { LinksFunction } from '@remix-run/node';
import {
  Links,
  Meta,
  Outlet,
  Scripts,
  ScrollRestoration,
  useLoaderData,
  useRouteError,
} from '@remix-run/react';

import styles from '~/root.css?url';
import { Card, CardContent, CardHeader, CardTitle } from '~/@/components/ui/card';
import { Toaster } from '~/@/components/ui/toaster';

export const links: LinksFunction = () => [
  { rel: 'stylesheet', href: styles },
  { rel: 'icon', href: '/favicon.png', type: 'image/png' },
];

export function loader() {
  return {
    publicEnv: {
      // These are public/client environment variables, don't expose sensitive data here
      NODE_ENV: process.env.NODE_ENV,
      SUPABASE_URL: process.env.SUPABASE_URL!,
      SUPABASE_ANON_KEY: process.env.SUPABASE_ANON_KEY!,
      MAPBOX_PUBLIC_KEY: process.env.MAPBOX_PUBLIC_KEY!,
    },
  };
}

export default function App() {
  const { publicEnv } = useLoaderData<typeof loader>();
  return (
    <html lang='en'>
      <head>
        <meta charSet='utf-8' />
        <meta name='viewport' content='width=device-width, initial-scale=1' />
        <Meta />
        <Links />
        <script
          dangerouslySetInnerHTML={{
            __html: `window.ENV = ${JSON.stringify(publicEnv)}`,
          }}
        />
      </head>
      <body>
        <Outlet />
        <ScrollRestoration />
        <Scripts />
        <Toaster />
      </body>
    </html>
  );
}

export function ErrorBoundary() {
  const error = useRouteError() as Error;
  const title = error.status === 404 ? 'Not Found' : 'Sorry, there was an error';
  console.warn('ErrorBoundary (root)', error);
  return (
    <html>
      <head>
        <title>{title}</title>
        <Meta />
        <Links />
        <style>{`
            body {
              display: flex;
              justify-content: center;
              align-items: center;
              height: 100vh;
            }
          `}</style>
      </head>
      <body>
        <Card className='w-[380px]'>
          <CardHeader>
            <CardTitle>{title}</CardTitle>
          </CardHeader>
          <CardContent>
            <p>{error.message ?? error.data}</p>
          </CardContent>
        </Card>
        <Scripts />
      </body>
    </html>
  );
}
