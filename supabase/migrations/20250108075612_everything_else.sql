-- TYPES

-- Same as basejump.account_role but to prevent crash in "/usr/local/bin/migra"
CREATE TYPE public.account_role AS ENUM (
    'owner',
    'member',
    'reviewer'
);

CREATE TYPE public.account_relation_type AS ENUM (
  'owner-of',
  'customer-to'
);

CREATE TYPE public.project_status AS ENUM (
    'not-started',
    'in-progress',
    'in-review',
    'in-parent-review',
    'completed'
);

-- TABLES

CREATE TABLE category (
    id bigint GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    created_at timestamp with time zone NOT NULL DEFAULT now(),
    slug character varying NOT NULL UNIQUE,
    name character varying NOT NULL,
    parent_category_id bigint REFERENCES category(id) ON DELETE CASCADE,
    position integer NOT NULL DEFAULT 1,
    description text,
    ai_instructions text,
    reference character varying,
    form_schema json,
    requirements_form_schema json
);
COMMENT ON COLUMN category.reference IS 'e.g. E2-6.1';

CREATE TABLE account_account (
    account_id uuid REFERENCES basejump.accounts(id) ON DELETE CASCADE,
    relation account_relation_type,
    other_account_id uuid REFERENCES basejump.accounts(id) ON DELETE CASCADE,
    include_share smallint DEFAULT '100'::smallint,
    from_date date,
    to_date date,
    id integer GENERATED ALWAYS AS IDENTITY,
    CONSTRAINT valid_relationship CHECK (account_id <> other_account_id),
    CONSTRAINT account_account_monogamous_relationship_pkey PRIMARY KEY (account_id, relation, other_account_id)
);
COMMENT ON COLUMN account_account.id IS 'Needed for genericCrudActions';

CREATE TABLE account_category (
    account_id uuid REFERENCES basejump.accounts(id) ON DELETE CASCADE,
    category_id integer REFERENCES category(id) ON DELETE CASCADE,
    can_input boolean DEFAULT true,
    can_report boolean DEFAULT true,
    status project_status NOT NULL DEFAULT 'not-started'::project_status,
    CONSTRAINT account_category_pkey PRIMARY KEY (account_id, category_id)
);

CREATE TABLE account_category_user (
    account_id uuid REFERENCES basejump.accounts(id) ON DELETE CASCADE,
    category_id integer REFERENCES category(id) ON DELETE CASCADE,
    user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE,
    account_role account_role NOT NULL DEFAULT 'member'::account_role,
    created_at timestamp with time zone DEFAULT now(),
    CONSTRAINT account_category_user_pkey PRIMARY KEY (account_id, category_id, user_id)
);

CREATE TABLE category_submission (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    category_id integer NOT NULL REFERENCES category(id) ON DELETE CASCADE,
    account_id uuid NOT NULL REFERENCES basejump.accounts(id) ON DELETE CASCADE,
    year smallint NOT NULL,
    comments text,
    content jsonb,
    requirements_status jsonb,
    CONSTRAINT text_content_unique_key UNIQUE (category_id, account_id, year)
);

-- VIEWS

CREATE VIEW view_categories_overview AS
  WITH selected_category AS (
         SELECT cat.id,
            cat.parent_category_id,
            cat.reference,
            cat.name,
            cat.slug,
            cat."position",
            child_cat.id AS child_category_id,
            child_cat.slug AS child_category_slug
           FROM category cat
             LEFT JOIN category child_cat ON child_cat.parent_category_id = cat.id
        ), parent_parent_category AS (
         SELECT category.id,
            category.parent_category_id,
            category.reference,
            category.name,
            category.slug,
            category."position"
           FROM category
        ), child_category AS (
         SELECT category.id,
            category.parent_category_id,
            category.reference,
            category.name,
            category.slug,
            category."position"
           FROM category
        ), child_category_user AS (
         SELECT account_category_user.account_id,
            account_category_user.category_id,
            json_build_object('id', users.id, 'name', accounts.name, 'email', users.email, 'role', account_category_user.account_role) AS user_info
           FROM account_category_user
             LEFT JOIN auth.users ON account_category_user.user_id = users.id
             LEFT JOIN basejump.accounts ON users.id = accounts.id AND accounts.personal_account = true
          GROUP BY account_category_user.account_id, account_category_user.category_id, users.id, accounts.name, account_category_user.account_role
        ), child_category_account AS (
         SELECT owner_acc.id AS owner_account_id,
            json_build_object('account_id', sub_acc.id, 'account_name', sub_acc.name, 'account_category_ids', array_agg(ac.category_id)) AS account_info
           FROM basejump.accounts owner_acc
             LEFT JOIN account_account aa ON owner_acc.id = aa.account_id AND aa.relation = 'owner-of'::account_relation_type
             LEFT JOIN basejump.accounts sub_acc ON aa.other_account_id = sub_acc.id
             LEFT JOIN account_category ac ON sub_acc.id = ac.account_id
          GROUP BY owner_acc.id, owner_acc.name, sub_acc.id, sub_acc.name
        )
 SELECT selected_account_category.account_id,
    selected_category.parent_category_id AS parent_category_parent_category_id,
    parent_parent_category.slug AS parent_category_parent_category_slug,
    selected_category.id AS parent_category_id,
    selected_category.slug AS parent_category_slug,
    selected_category.reference AS parent_category_reference,
    selected_category.name AS parent_category_name,
    selected_account_category.can_input AS parent_category_can_input,
    selected_account_category.can_report AS parent_category_can_report,
    selected_category."position" AS parent_category_position,
    selected_account_category.status AS parent_category_status,
    0.75 AS parent_category_progress,
    child_category.id AS child_category_id,
    child_category.slug AS child_category_slug,
    child_category.reference AS child_category_reference,
    child_category.name AS child_category_name,
    child_category."position" AS child_category_position,
    child_account_category.status AS child_category_status,
    0.75 AS child_category_progress,
    json_agg(child_category_user.user_info) AS child_category_users,
    json_agg(child_category_account.account_info) AS child_category_accounts,
    child_account_category.can_input AS child_category_can_input,
    child_account_category.can_report AS child_category_can_report
   FROM account_category selected_account_category
     LEFT JOIN selected_category ON selected_category.id = selected_account_category.category_id OR selected_category.parent_category_id = selected_account_category.category_id OR selected_category.child_category_id = selected_account_category.category_id
     LEFT JOIN parent_parent_category ON parent_parent_category.id = selected_category.parent_category_id
     LEFT JOIN child_category ON child_category.parent_category_id = selected_category.id
     LEFT JOIN account_category child_account_category ON child_account_category.category_id = child_category.id AND child_account_category.account_id = selected_account_category.account_id
     LEFT JOIN child_category_user ON child_category_user.account_id = selected_account_category.account_id AND child_category_user.category_id = child_category.id
     LEFT JOIN child_category_account ON child_category_account.owner_account_id = selected_account_category.account_id
  WHERE selected_account_category.category_id = selected_category.parent_category_id OR selected_account_category.category_id = selected_category.id OR selected_account_category.category_id = child_category.id
  GROUP BY selected_account_category.account_id, selected_category.parent_category_id, parent_parent_category.slug, parent_parent_category."position", selected_category.id, selected_category.name, selected_category.reference, selected_category.slug, selected_category."position", selected_account_category.can_input, selected_account_category.can_report, selected_account_category.status, child_category.id, child_category.name, child_category.reference, child_category.slug, child_category."position", child_account_category.status, child_account_category.can_input, child_account_category.can_report
  ORDER BY parent_parent_category."position", selected_category."position", child_category."position";

CREATE VIEW view_category_submissions AS
  SELECT category.parent_category_id,
    category.id AS category_id,
    category.slug AS category_slug,
    category.name AS category_name,
    category.description AS category_description,
    category.ai_instructions AS category_ai_instructions,
    category."position",
    category_submission.account_id,
    category_submission.year,
    category_submission.content,
    category_submission.comments,
    category_submission.requirements_status
  FROM category
     LEFT JOIN category_submission ON category.id = category_submission.category_id
  ORDER BY category.parent_category_id, category."position";
