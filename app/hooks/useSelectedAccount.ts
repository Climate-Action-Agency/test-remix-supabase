import { useEffect, useState } from 'react';
import { useParams } from '@remix-run/react';
import { GetAccountResponse, useBasejumpClient } from '@usebasejump/react';

import { FunctionUpdateAccountArgumentsWithoutAccount } from '~/.server/services/accounts';

/** const accountSlug = useSelectedAccountSlug(); */
export const useSelectedAccountSlug = () => {
  const { team } = useParams();
  return team;
};

/** const account = useSelectedAccount(); */
export const useSelectedAccount = () => {
  const { team } = useParams();
  const [selectedAccount, setSelectedAccount] = useState<GetAccountResponse | undefined>();
  const supabaseClient = useBasejumpClient();
  useEffect(() => {
    async function getAccountBySlug() {
      const results = await supabaseClient?.rpc('get_account_by_slug', { slug: team });
      setSelectedAccount(results?.data as GetAccountResponse | undefined);
    }
    void getAccountBySlug();
  }, [team]);
  return selectedAccount;
};

/** const updateSelectedAccount = useUpdateSelectedAccount();
 *  await updateSelectedAccount({ public_metadata: { ai_vector_store_id: '123' } }); */
export const useUpdateSelectedAccount = () => {
  const account = useSelectedAccount();
  const supabaseClient = useBasejumpClient();

  async function updateSelectedAccount(args: FunctionUpdateAccountArgumentsWithoutAccount) {
    return await supabaseClient?.rpc('update_account', {
      ...args,
      account_id: account?.account_id,
    });
  }

  return updateSelectedAccount;
};
