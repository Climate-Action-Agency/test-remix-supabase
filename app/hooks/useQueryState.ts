import { useState, useEffect } from 'react';
import { useLocation, useNavigate } from '@remix-run/react';

/**
  import useQueryState from '~/hooks/useQueryState';
  const [category, setCategory] = useQueryState('category', '1');
*/
function useQueryState(key: string, defaultValue: string): [string, (value: string) => void] {
  const location = useLocation();
  const navigate = useNavigate();
  const searchParams = new URLSearchParams(location.search);

  // Get the initial state from the query string or use the default value
  const initialState = searchParams.get(key) ?? defaultValue;

  // State to keep track of the query parameter
  const [state, setState] = useState(initialState);

  // Update the query string and state when the state changes
  const setQueryState = (value: string) => {
    setState(value);
    // Update the query parameter in the URL
    searchParams.set(key, value);
    navigate(`${location.pathname}?${searchParams.toString()}`, { replace: true });
  };

  // Effect to sync the state with the URL when the component mounts
  useEffect(() => {
    const queryValue = searchParams.get(key);
    if (queryValue === null) {
      // If query param is missing, set it to the default value
      searchParams.set(key, defaultValue);
      navigate(`${location.pathname}?${searchParams.toString()}`, { replace: true });
    } else {
      // If query param exists, update the state with the value from the URL
      setState(queryValue);
    }
  }, [location.search]);

  return [state, setQueryState];
}

export default useQueryState;
