import { useLoaderData } from '@remix-run/react';
import { loader } from '~/.server/loaders/subCategoryAccounts';

export default function Progress() {
  const { accounts } = useLoaderData<typeof loader>();

  return (
    <>
      {accounts.map((account) => (
        <p className='mt-10 font-bold' key={account.id}>
          {account.id.substring(0, 5)}: {account.status}
        </p>
      ))}
    </>
  );
}

export const handle: TabHandle = {
  name: 'progress',
};
