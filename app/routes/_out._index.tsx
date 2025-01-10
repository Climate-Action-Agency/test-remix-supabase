import { Link } from '@remix-run/react';
import { Button } from '~/@/components/ui/button';

export default function StartPageWhenNotLoggedIn(): React.ReactElement {
  return (
    <>
      <Link to='/signup'>
        <Button className='w-full mb-3'>Create new account</Button>
      </Link>
      <Link to='/login'>
        <Button className='w-full'>Log in</Button>
      </Link>
    </>
  );
}
