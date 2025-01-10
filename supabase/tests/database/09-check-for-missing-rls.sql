BEGIN;

select plan(1);

CREATE OR REPLACE FUNCTION test_rls_enabled_on_all_public_tables()
RETURNS SETOF TEXT AS $$
BEGIN
    RETURN QUERY
    SELECT tablename::TEXT -- Explicitly cast to TEXT
    FROM pg_tables
    WHERE schemaname = 'public'
      AND tablename != 'spatial_ref_sys' -- Exclude the spatial_ref_sys table
      AND tablename NOT IN (
          SELECT c.relname::TEXT
          FROM pg_class c
          JOIN pg_namespace n ON c.relnamespace = n.oid
          WHERE n.nspname = 'public'
            AND c.relrowsecurity = true
      );
END;
$$ LANGUAGE plpgsql;

-- pgTAP Test

SELECT is_empty(
    'SELECT * FROM test_rls_enabled_on_all_public_tables()',
    'All tables in the public schema have RLS enabled'
);

ROLLBACK;
