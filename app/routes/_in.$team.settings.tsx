import { ActionFunctionArgs, LoaderFunctionArgs } from '@remix-run/node';
import { useFetcher, useLoaderData } from '@remix-run/react';

import { requireUserSession } from '~/session';

import { sendEmailGenericEmail } from '~/.server/services/email';
import { Input } from '~/@/components/ui/input';
import { Button } from '~/@/components/ui/button';
import { Heading } from '~/@/components/ui/heading';
import LogOutButton from '~/@/components/basejump/LogOutButton';
import { Await } from '@remix-run/react';
import { Suspense } from 'react';
import { UserResponse } from '@supabase/supabase-js';

export async function loader({ request }: LoaderFunctionArgs) {
  const { supabaseClient } = await requireUserSession({ request });
  const userPromise = supabaseClient.auth.getUser();

  return {
    userPromise,
  };
}

export async function action({ request }: ActionFunctionArgs) {
  const { supabaseClient } = await requireUserSession({ request });
  const formData = await request.formData();
  const email = formData.get('email') as string;
  await sendEmailGenericEmail(email, {
    firstName: email,
    subject: 'Account email changed',
    html: 'Your account email has been updated.',
  });
  const password = formData.get('password') as string;
  const { data, error } = await supabaseClient.auth.updateUser({ email, password });
  return { data, error };
}

export default function Settings() {
  const { userPromise }: { userPromise: Promise<UserResponse> } = useLoaderData<typeof loader>();

  const emailFetcher = useFetcher<typeof action>();
  const passwordFetcher = useFetcher<typeof action>();
  const isUpdatingEmail = emailFetcher.state !== 'idle';
  const isUpdatingPassword = passwordFetcher.state !== 'idle';

  return (
    <>
      <Suspense fallback={<div>Loading...</div>}>
        <Await resolve={userPromise}>
          {({ data: { user } }) => (
            <>
              <Heading level='h1'>My Settings</Heading>
              <p>Change email ({user?.email})</p>
              {!emailFetcher.data || emailFetcher.data?.error ? (
                <>
                  <emailFetcher.Form className='flex' method='post'>
                    <Input name='email' defaultValue={user?.email} className='mr-4' />
                    <Button type='submit' disabled={isUpdatingEmail}>
                      {isUpdatingEmail ? 'Updating...' : 'Change'}
                    </Button>
                  </emailFetcher.Form>
                  {emailFetcher.data?.error && (
                    <p className='text-red-500'>{emailFetcher.data.error.message}</p>
                  )}
                </>
              ) : (
                <p>Check your email to verify the change of email address.</p>
              )}
              <p className='mt-4'>Change password</p>
              {!passwordFetcher.data || passwordFetcher.data?.error ? (
                <>
                  <passwordFetcher.Form className='flex' method='post'>
                    <Input
                      name='password'
                      type='password'
                      placeholder='New password'
                      className='mr-4'
                    />
                    <Button type='submit' disabled={isUpdatingPassword}>
                      {isUpdatingPassword ? 'Updating...' : 'Change'}
                    </Button>
                  </passwordFetcher.Form>
                  {passwordFetcher.data?.error && (
                    <p className='text-red-500'>{passwordFetcher.data.error.message}</p>
                  )}
                </>
              ) : (
                <p>Password updated!</p>
              )}
            </>
          )}
        </Await>
      </Suspense>
      <Heading level='h2'>Log out from the platform</Heading>
      <LogOutButton />
    </>
  );
}
