import { useEffect, useState } from 'react';
import { useBasejumpClient } from '@usebasejump/react';
import { Database } from '~/types/supabase';

export function useSuperAdmin(): { isSuperAdmin: boolean } {
  const supabaseClient = useBasejumpClient();
  const [isSuperAdmin, setIsSuperAdmin] = useState(false);

  useEffect(() => {
    async function fetchAdmin() {
      const account_user = await supabaseClient
        ?.schema('basejump')
        .from('account_user')
        .select<Database>();
      setIsSuperAdmin(account_user?.data?.some((acc) => acc.account_role === 'super_admin'));
    }
    void fetchAdmin();
  }, [supabaseClient]);
  return { isSuperAdmin };
}
