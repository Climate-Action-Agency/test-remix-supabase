import React, { useEffect, useState } from 'react';
import { ActionFunctionArgs, json } from '@remix-run/node';
import { Form, useActionData, Link, useSearchParams, MetaFunction } from '@remix-run/react';

import { buildMeta } from '~/utils/meta';
import { createSupabaseServerClient } from '~/supabase.server';
import { Input } from '~/@/components/ui/input';
import { Button } from '~/@/components/ui/button';

export const meta: MetaFunction = (args) => buildMeta({ args, title: 'Log in' });

const Login = (): React.ReactElement => {
  const actionResponse = useActionData<typeof action>();
  const [searchParams] = useSearchParams();
  const redirectPath = searchParams.get('redirect');
  const [isSubmitting, setIsSubmitting] = useState(false);

  useEffect(() => {
    if (actionResponse?.success === false) {
      setIsSubmitting(false);
    }
  }, [actionResponse]);

  const handleSubmit = () => {
    setIsSubmitting(true);
  };

  return (
    <Form method='post' onSubmit={handleSubmit}>
      <Input type='email' name='email' placeholder='Email' required className='my-2' />
      <Input type='password' name='password' placeholder='Password' required className='my-2' />

      <Button type='submit' className='w-full' disabled={isSubmitting}>
        {isSubmitting ? 'Logging in...' : 'Log In'}
      </Button>

      {actionResponse?.success === false && <p className='text-red-500'>Wrong email or password</p>}

      <Link
        to={`/signup${redirectPath ? `?redirect=${encodeURIComponent(redirectPath)}` : ''}`}
        className='block text-center mt-2'
      >
        or Sign Up
      </Link>
    </Form>
  );
};

export default Login;

export async function action({ request }: ActionFunctionArgs) {
  const { supabaseClient, headers } = createSupabaseServerClient(request);
  const formData = await request.formData();

  const { error } = await supabaseClient.auth.signInWithPassword({
    email: formData.get('email') as string,
    password: formData.get('password') as string,
  });

  console.log('logon error:', error);

  if (error != null) {
    return json({ success: false }, { headers });
  }

  return json({ success: true }, { headers });
}
