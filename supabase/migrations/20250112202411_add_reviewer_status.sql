DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'member_status_enum') THEN
        CREATE TYPE member_status_enum AS ENUM ('Owner', 'Contributor', 'Reviewer');
    END IF;
END $$;

DO $$
BEGIN
    IF EXISTS (SELECT 1 FROM pg_type WHERE typname = 'account_role') THEN
        -- Add the 'reviewer' value to the ENUM type
        ALTER TYPE account_role ADD VALUE 'reviewer';
    END IF;
END $$;