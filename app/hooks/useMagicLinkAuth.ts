import { useEffect } from 'react';
import { useNavigate } from '@remix-run/react';
import { SupabaseClient } from '@supabase/supabase-js';

const useMagicLinkAuth = (supabaseClient: SupabaseClient) => {
  const navigate = useNavigate();

  useEffect(() => {
    // Get the #hash portion of the URL
    const hash = window.location.hash;

    if (hash) {
      // Parse the access_token from the hash
      const params = new URLSearchParams(hash.substring(1)); // Remove the '#' and parse
      const sessionObject = {
        access_token: params.get('access_token') ?? '',
        refresh_token: params.get('refresh_token') ?? '',
      };

      if (sessionObject.access_token !== '') {
        // Set the session with Supabase
        void supabaseClient.auth.setSession(sessionObject).then(({ data, error }) => {
          if (error) {
            console.error('Error setting session:', error);
          } else {
            console.log('Session set successfully:', data);
            // Clear the hash from the URL
            window.history.replaceState(null, '', window.location.pathname);
            // Redirect to the protected route after setting session
            navigate('/login');
          }
        });
      }
    }
  }, [navigate]);
};
export default useMagicLinkAuth;
