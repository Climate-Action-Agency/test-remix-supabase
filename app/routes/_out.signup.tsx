import { ActionFunctionArgs, json } from '@remix-run/node';
import { Form, useActionData, Link, useSearchParams, MetaFunction } from '@remix-run/react';

import { buildMeta } from '~/utils/meta';
import { createSupabaseServerClient } from '~/supabase.server';
import { Input } from '~/@/components/ui/input';
import { Button } from '~/@/components/ui/button';
import { Heading } from '~/@/components/ui/heading';

export const meta: MetaFunction = (args) => buildMeta({ args, title: 'Sign up' });

export default function Signup(): React.ReactElement {
  const [searchParams] = useSearchParams();
  const redirectPath = searchParams.get('redirect');

  const actionResponse = useActionData<typeof action>();

  return (
    <>
      {actionResponse?.success !== true ? (
        <>
          {actionResponse?.message !== undefined && (
            <p className='bg-destructive text-destructive-foreground p-4 text-sm rounded-sm'>
              {actionResponse.message}
            </p>
          )}
          <Form method='post'>
            <Input type='email' name='email' placeholder='Your Email' required className='my-2' />
            <Input
              type='password'
              name='password'
              placeholder='Your Password'
              required
              className='my-2'
            />

            <Button type='submit' className='w-full'>
              Sign Up
            </Button>
          </Form>
          <Link
            to={`/login${redirectPath ? `?redirect=${encodeURIComponent(redirectPath)}` : ''}`}
            className='block text-center mt-2'
          >
            or Log in
          </Link>

          <p className='w-full text-xs text-center mt-4 text-gray-500'>
            By signing up, you agree to our{' '}
            <Link to='/terms' target='_blank' className='underline'>
              Terms
            </Link>{' '}
            and{' '}
            <Link to='/privacy' target='_blank' className='underline'>
              Privacy Policy
            </Link>
            .
          </p>
        </>
      ) : (
        <Heading level='h3'>Please check your email.</Heading>
      )}
    </>
  );
}

export async function action({ request }: ActionFunctionArgs) {
  const { supabaseClient, headers } = createSupabaseServerClient(request);
  const formData = await request.formData();

  const { error } = await supabaseClient.auth.signUp({
    email: formData.get('email') as string,
    password: formData.get('password') as string,
    options: {
      emailRedirectTo: process.env.EMAIL_REDIRECT,
    },
  });

  // just for this example
  // if there is no error, we show "Please check you email" message
  if (error != null) {
    return json({ success: false, message: error.message }, { headers });
  }

  return json({ success: true, message: 'ok' }, { headers });
}
