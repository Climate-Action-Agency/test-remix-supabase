/**
 * import useUser from '~/hooks/useUser';
 * const { user } = useUser();
 */

import { useEffect, useState } from 'react';
import { useBasejumpClient } from '@usebasejump/react';
import { User } from '@supabase/supabase-js'; // Import User type from supabase-js

interface UseUserReturn {
  user: User | null;
  loading: boolean;
  error: string | null;
}

function useUser(): UseUserReturn {
  const supabaseClient = useBasejumpClient();
  const [user, setUser] = useState<User | null>(null);
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    async function fetchUser() {
      try {
        setLoading(true);
        const results = await supabaseClient?.auth.getUser();

        if (results?.error) {
          setError(results?.error.message);
          setUser(null);
        } else {
          setUser(results?.data?.user ?? null);
        }
      } catch (err) {
        setError((err as Error).message);
      } finally {
        setLoading(false);
      }
    }

    void fetchUser();
  }, [supabaseClient]);

  return { user, loading, error };
}

export default useUser;
