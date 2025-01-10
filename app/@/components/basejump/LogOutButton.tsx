import React from 'react';
import { Form } from '@remix-run/react';
import { Button } from '~/@/components/ui/button';

const LogOutButton: React.FC = () => {
  return (
    <Form action='/logout' method='post' className='my-0'>
      <Button type='submit' variant='destructive'>
        Log out
      </Button>
    </Form>
  );
};
export default LogOutButton;
