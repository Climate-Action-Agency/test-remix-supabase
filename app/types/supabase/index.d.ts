export type Json = string | number | boolean | null | { [key: string]: Json | undefined } | Json[];

export interface Database {
  basejump: {
    Tables: {
      account_user: {
        Row: {
          account_id: string;
          account_role: Database['basejump']['Enums']['account_role'];
          created_at: string | null;
          user_id: string;
        };
        Insert: {
          account_id: string;
          account_role: Database['basejump']['Enums']['account_role'];
          created_at?: string | null;
          user_id: string;
        };
        Update: {
          account_id?: string;
          account_role?: Database['basejump']['Enums']['account_role'];
          created_at?: string | null;
          user_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: 'account_user_account_id_fkey';
            columns: ['account_id'];
            isOneToOne: false;
            referencedRelation: 'accounts';
            referencedColumns: ['id'];
          },
        ];
      };
      accounts: {
        Row: {
          business_description: string | null;
          category_id: number | null;
          city: string | null;
          country_code: string | null;
          created_at: string | null;
          created_by: string | null;
          email_invoices: string | null;
          emission_factor_id: number | null;
          id: string;
          nace_category_id: number | null;
          name: string | null;
          organization_number: string | null;
          personal_account: boolean;
          postal_code: string | null;
          primary_owner_user_id: string;
          private_metadata: Json | null;
          public_metadata: Json | null;
          slug: string | null;
          state: string | null;
          street: string | null;
          updated_at: string | null;
          updated_by: string | null;
          website_url: string | null;
        };
        Insert: {
          business_description?: string | null;
          category_id?: number | null;
          city?: string | null;
          country_code?: string | null;
          created_at?: string | null;
          created_by?: string | null;
          email_invoices?: string | null;
          emission_factor_id?: number | null;
          id?: string;
          nace_category_id?: number | null;
          name?: string | null;
          organization_number?: string | null;
          personal_account?: boolean;
          postal_code?: string | null;
          primary_owner_user_id?: string;
          private_metadata?: Json | null;
          public_metadata?: Json | null;
          slug?: string | null;
          state?: string | null;
          street?: string | null;
          updated_at?: string | null;
          updated_by?: string | null;
          website_url?: string | null;
        };
        Update: {
          business_description?: string | null;
          category_id?: number | null;
          city?: string | null;
          country_code?: string | null;
          created_at?: string | null;
          created_by?: string | null;
          email_invoices?: string | null;
          emission_factor_id?: number | null;
          id?: string;
          nace_category_id?: number | null;
          name?: string | null;
          organization_number?: string | null;
          personal_account?: boolean;
          postal_code?: string | null;
          primary_owner_user_id?: string;
          private_metadata?: Json | null;
          public_metadata?: Json | null;
          slug?: string | null;
          state?: string | null;
          street?: string | null;
          updated_at?: string | null;
          updated_by?: string | null;
          website_url?: string | null;
        };
        Relationships: [];
      };
      billing_customers: {
        Row: {
          account_id: string;
          active: boolean | null;
          email: string | null;
          id: string;
          provider: string | null;
        };
        Insert: {
          account_id: string;
          active?: boolean | null;
          email?: string | null;
          id: string;
          provider?: string | null;
        };
        Update: {
          account_id?: string;
          active?: boolean | null;
          email?: string | null;
          id?: string;
          provider?: string | null;
        };
        Relationships: [
          {
            foreignKeyName: 'billing_customers_account_id_fkey';
            columns: ['account_id'];
            isOneToOne: false;
            referencedRelation: 'accounts';
            referencedColumns: ['id'];
          },
        ];
      };
      billing_subscriptions: {
        Row: {
          account_id: string;
          billing_customer_id: string;
          cancel_at: string | null;
          cancel_at_period_end: boolean | null;
          canceled_at: string | null;
          created: string;
          current_period_end: string;
          current_period_start: string;
          ended_at: string | null;
          id: string;
          metadata: Json | null;
          plan_name: string | null;
          price_id: string | null;
          provider: string | null;
          quantity: number | null;
          status: Database['basejump']['Enums']['subscription_status'] | null;
          trial_end: string | null;
          trial_start: string | null;
        };
        Insert: {
          account_id: string;
          billing_customer_id: string;
          cancel_at?: string | null;
          cancel_at_period_end?: boolean | null;
          canceled_at?: string | null;
          created?: string;
          current_period_end?: string;
          current_period_start?: string;
          ended_at?: string | null;
          id: string;
          metadata?: Json | null;
          plan_name?: string | null;
          price_id?: string | null;
          provider?: string | null;
          quantity?: number | null;
          status?: Database['basejump']['Enums']['subscription_status'] | null;
          trial_end?: string | null;
          trial_start?: string | null;
        };
        Update: {
          account_id?: string;
          billing_customer_id?: string;
          cancel_at?: string | null;
          cancel_at_period_end?: boolean | null;
          canceled_at?: string | null;
          created?: string;
          current_period_end?: string;
          current_period_start?: string;
          ended_at?: string | null;
          id?: string;
          metadata?: Json | null;
          plan_name?: string | null;
          price_id?: string | null;
          provider?: string | null;
          quantity?: number | null;
          status?: Database['basejump']['Enums']['subscription_status'] | null;
          trial_end?: string | null;
          trial_start?: string | null;
        };
        Relationships: [
          {
            foreignKeyName: 'billing_subscriptions_account_id_fkey';
            columns: ['account_id'];
            isOneToOne: false;
            referencedRelation: 'accounts';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'billing_subscriptions_billing_customer_id_fkey';
            columns: ['billing_customer_id'];
            isOneToOne: false;
            referencedRelation: 'billing_customers';
            referencedColumns: ['id'];
          },
        ];
      };
      config: {
        Row: {
          billing_provider: string | null;
          enable_personal_account_billing: boolean | null;
          enable_team_account_billing: boolean | null;
          enable_team_accounts: boolean | null;
        };
        Insert: {
          billing_provider?: string | null;
          enable_personal_account_billing?: boolean | null;
          enable_team_account_billing?: boolean | null;
          enable_team_accounts?: boolean | null;
        };
        Update: {
          billing_provider?: string | null;
          enable_personal_account_billing?: boolean | null;
          enable_team_account_billing?: boolean | null;
          enable_team_accounts?: boolean | null;
        };
        Relationships: [];
      };
      invitations: {
        Row: {
          account_id: string;
          account_name: string | null;
          account_role: Database['basejump']['Enums']['account_role'];
          created_at: string | null;
          id: string;
          invitation_type: Database['basejump']['Enums']['invitation_type'];
          invited_by_user_id: string;
          token: string;
          updated_at: string | null;
        };
        Insert: {
          account_id: string;
          account_name?: string | null;
          account_role: Database['basejump']['Enums']['account_role'];
          created_at?: string | null;
          id?: string;
          invitation_type: Database['basejump']['Enums']['invitation_type'];
          invited_by_user_id: string;
          token?: string;
          updated_at?: string | null;
        };
        Update: {
          account_id?: string;
          account_name?: string | null;
          account_role?: Database['basejump']['Enums']['account_role'];
          created_at?: string | null;
          id?: string;
          invitation_type?: Database['basejump']['Enums']['invitation_type'];
          invited_by_user_id?: string;
          token?: string;
          updated_at?: string | null;
        };
        Relationships: [
          {
            foreignKeyName: 'invitations_account_id_fkey';
            columns: ['account_id'];
            isOneToOne: false;
            referencedRelation: 'accounts';
            referencedColumns: ['id'];
          },
        ];
      };
    };
    Views: {
      [_ in never]: never;
    };
    Functions: {
      generate_token: {
        Args: {
          length: number;
        };
        Returns: string;
      };
      get_accounts_with_role: {
        Args: {
          passed_in_role?: Database['basejump']['Enums']['account_role'];
        };
        Returns: string[];
      };
      get_config: {
        Args: Record<PropertyKey, never>;
        Returns: Json;
      };
      has_role_on_account: {
        Args: {
          account_id: string;
          account_role?: Database['basejump']['Enums']['account_role'];
        };
        Returns: boolean;
      };
      is_set: {
        Args: {
          field_name: string;
        };
        Returns: boolean;
      };
    };
    Enums: {
      account_role: 'owner' | 'member' | 'super_admin';
      invitation_type: 'one_time' | '24_hour';
      subscription_status:
        | 'trialing'
        | 'active'
        | 'canceled'
        | 'incomplete'
        | 'incomplete_expired'
        | 'past_due'
        | 'unpaid';
    };
    CompositeTypes: {
      [_ in never]: never;
    };
  };
  public: {
    Tables: {
      account_account: {
        Row: {
          account_id: string;
          from_date: string | null;
          id: number;
          include_share: number | null;
          other_account_id: string;
          relation: Database['public']['Enums']['account_relation_type'];
          to_date: string | null;
        };
        Insert: {
          account_id: string;
          from_date?: string | null;
          id?: never;
          include_share?: number | null;
          other_account_id: string;
          relation: Database['public']['Enums']['account_relation_type'];
          to_date?: string | null;
        };
        Update: {
          account_id?: string;
          from_date?: string | null;
          id?: never;
          include_share?: number | null;
          other_account_id?: string;
          relation?: Database['public']['Enums']['account_relation_type'];
          to_date?: string | null;
        };
        Relationships: [];
      };
      account_category: {
        Row: {
          account_id: string;
          can_input: boolean | null;
          can_report: boolean | null;
          category_id: number;
          status: Database['public']['Enums']['project_status'];
        };
        Insert: {
          account_id: string;
          can_input?: boolean | null;
          can_report?: boolean | null;
          category_id: number;
          status?: Database['public']['Enums']['project_status'];
        };
        Update: {
          account_id?: string;
          can_input?: boolean | null;
          can_report?: boolean | null;
          category_id?: number;
          status?: Database['public']['Enums']['project_status'];
        };
        Relationships: [
          {
            foreignKeyName: 'account_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'category';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'account_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['emission_factor_category_id'];
          },
          {
            foreignKeyName: 'account_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['category_id'];
          },
          {
            foreignKeyName: 'account_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['child_category_id'];
          },
          {
            foreignKeyName: 'account_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['parent_category_id'];
          },
          {
            foreignKeyName: 'account_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_category_submissions';
            referencedColumns: ['category_id'];
          },
        ];
      };
      account_category_user: {
        Row: {
          account_id: string;
          account_role: Database['basejump']['Enums']['account_role'];
          category_id: number;
          created_at: string | null;
          user_id: string;
        };
        Insert: {
          account_id: string;
          account_role?: Database['basejump']['Enums']['account_role'];
          category_id: number;
          created_at?: string | null;
          user_id: string;
        };
        Update: {
          account_id?: string;
          account_role?: Database['basejump']['Enums']['account_role'];
          category_id?: number;
          created_at?: string | null;
          user_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: 'account_category_user_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'category';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'account_category_user_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['emission_factor_category_id'];
          },
          {
            foreignKeyName: 'account_category_user_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['category_id'];
          },
          {
            foreignKeyName: 'account_category_user_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['child_category_id'];
          },
          {
            foreignKeyName: 'account_category_user_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['parent_category_id'];
          },
          {
            foreignKeyName: 'account_category_user_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_category_submissions';
            referencedColumns: ['category_id'];
          },
        ];
      };
      accounting_category: {
        Row: {
          account_id: string | null;
          category_id: number | null;
          emission_factor_id: number | null;
          external_accounting_category_id: string | null;
          id: number;
          include_emissions: number | null;
          nace_category_id: number | null;
          name: string | null;
          parent_accounting_category_id: number | null;
        };
        Insert: {
          account_id?: string | null;
          category_id?: number | null;
          emission_factor_id?: number | null;
          external_accounting_category_id?: string | null;
          id?: never;
          include_emissions?: number | null;
          nace_category_id?: number | null;
          name?: string | null;
          parent_accounting_category_id?: number | null;
        };
        Update: {
          account_id?: string | null;
          category_id?: number | null;
          emission_factor_id?: number | null;
          external_accounting_category_id?: string | null;
          id?: never;
          include_emissions?: number | null;
          nace_category_id?: number | null;
          name?: string | null;
          parent_accounting_category_id?: number | null;
        };
        Relationships: [
          {
            foreignKeyName: 'accounting_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'category';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'accounting_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['emission_factor_category_id'];
          },
          {
            foreignKeyName: 'accounting_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['category_id'];
          },
          {
            foreignKeyName: 'accounting_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['child_category_id'];
          },
          {
            foreignKeyName: 'accounting_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['parent_category_id'];
          },
          {
            foreignKeyName: 'accounting_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_category_submissions';
            referencedColumns: ['category_id'];
          },
          {
            foreignKeyName: 'accounting_category_emission_factor_id_fkey';
            columns: ['emission_factor_id'];
            isOneToOne: false;
            referencedRelation: 'emission_factor';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'accounting_category_emission_factor_id_fkey';
            columns: ['emission_factor_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['emission_factor_id'];
          },
          {
            foreignKeyName: 'accounting_category_emission_factor_id_fkey';
            columns: ['emission_factor_id'];
            isOneToOne: false;
            referencedRelation: 'view_emission_factors';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'accounting_category_nace_category_id_fkey';
            columns: ['nace_category_id'];
            isOneToOne: false;
            referencedRelation: 'nace_category';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'accounting_category_parent_accounting_category_id_fkey';
            columns: ['parent_accounting_category_id'];
            isOneToOne: false;
            referencedRelation: 'accounting_category';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'accounting_category_parent_accounting_category_id_fkey';
            columns: ['parent_accounting_category_id'];
            isOneToOne: false;
            referencedRelation: 'view_accounting_categories';
            referencedColumns: ['id'];
          },
        ];
      };
      activity: {
        Row: {
          account_id: string | null;
          category_id: number | null;
          country_id: number | null;
          created_at: string;
          customer_account_id: string | null;
          day: number | null;
          duration: number | null;
          id: number;
          metadata: Json | null;
          month: number | null;
          supplier_account_id: string | null;
          year: number;
        };
        Insert: {
          account_id?: string | null;
          category_id?: number | null;
          country_id?: number | null;
          created_at?: string;
          customer_account_id?: string | null;
          day?: number | null;
          duration?: number | null;
          id?: number;
          metadata?: Json | null;
          month?: number | null;
          supplier_account_id?: string | null;
          year: number;
        };
        Update: {
          account_id?: string | null;
          category_id?: number | null;
          country_id?: number | null;
          created_at?: string;
          customer_account_id?: string | null;
          day?: number | null;
          duration?: number | null;
          id?: number;
          metadata?: Json | null;
          month?: number | null;
          supplier_account_id?: string | null;
          year?: number;
        };
        Relationships: [
          {
            foreignKeyName: 'activity_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'category';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'activity_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['emission_factor_category_id'];
          },
          {
            foreignKeyName: 'activity_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['category_id'];
          },
          {
            foreignKeyName: 'activity_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['child_category_id'];
          },
          {
            foreignKeyName: 'activity_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['parent_category_id'];
          },
          {
            foreignKeyName: 'activity_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_category_submissions';
            referencedColumns: ['category_id'];
          },
          {
            foreignKeyName: 'activity_country_id_fkey';
            columns: ['country_id'];
            isOneToOne: false;
            referencedRelation: 'country';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'activity_country_id_fkey';
            columns: ['country_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['country_id'];
          },
        ];
      };
      address: {
        Row: {
          city: string | null;
          entrance: string;
          id: number;
          street: string;
          street_number: number;
          zipcode: number;
        };
        Insert: {
          city?: string | null;
          entrance: string;
          id?: number;
          street: string;
          street_number: number;
          zipcode: number;
        };
        Update: {
          city?: string | null;
          entrance?: string;
          id?: number;
          street?: string;
          street_number?: number;
          zipcode?: number;
        };
        Relationships: [];
      };
      category: {
        Row: {
          ai_instructions: string | null;
          created_at: string;
          default_emission_factor_id: number | null;
          description: string | null;
          form_schema: Json | null;
          id: number;
          name: string;
          parent_category_id: number | null;
          position: number;
          reference: string | null;
          requirements_form_schema: Json | null;
          slug: string;
        };
        Insert: {
          ai_instructions?: string | null;
          created_at?: string;
          default_emission_factor_id?: number | null;
          description?: string | null;
          form_schema?: Json | null;
          id?: number;
          name: string;
          parent_category_id?: number | null;
          position?: number;
          reference?: string | null;
          requirements_form_schema?: Json | null;
          slug: string;
        };
        Update: {
          ai_instructions?: string | null;
          created_at?: string;
          default_emission_factor_id?: number | null;
          description?: string | null;
          form_schema?: Json | null;
          id?: number;
          name?: string;
          parent_category_id?: number | null;
          position?: number;
          reference?: string | null;
          requirements_form_schema?: Json | null;
          slug?: string;
        };
        Relationships: [
          {
            foreignKeyName: 'category_default_emission_factor_id_fkey';
            columns: ['default_emission_factor_id'];
            isOneToOne: false;
            referencedRelation: 'emission_factor';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'category_default_emission_factor_id_fkey';
            columns: ['default_emission_factor_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['emission_factor_id'];
          },
          {
            foreignKeyName: 'category_default_emission_factor_id_fkey';
            columns: ['default_emission_factor_id'];
            isOneToOne: false;
            referencedRelation: 'view_emission_factors';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'category_parent_category_id_fkey';
            columns: ['parent_category_id'];
            isOneToOne: false;
            referencedRelation: 'category';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'category_parent_category_id_fkey';
            columns: ['parent_category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['emission_factor_category_id'];
          },
          {
            foreignKeyName: 'category_parent_category_id_fkey';
            columns: ['parent_category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['category_id'];
          },
          {
            foreignKeyName: 'category_parent_category_id_fkey';
            columns: ['parent_category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['child_category_id'];
          },
          {
            foreignKeyName: 'category_parent_category_id_fkey';
            columns: ['parent_category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['parent_category_id'];
          },
          {
            foreignKeyName: 'category_parent_category_id_fkey';
            columns: ['parent_category_id'];
            isOneToOne: false;
            referencedRelation: 'view_category_submissions';
            referencedColumns: ['category_id'];
          },
        ];
      };
      category_submission: {
        Row: {
          account_id: string;
          category_id: number;
          comments: string | null;
          content: Json | null;
          id: number;
          requirements_status: Json | null;
          year: number;
        };
        Insert: {
          account_id: string;
          category_id: number;
          comments?: string | null;
          content?: Json | null;
          id?: never;
          requirements_status?: Json | null;
          year: number;
        };
        Update: {
          account_id?: string;
          category_id?: number;
          comments?: string | null;
          content?: Json | null;
          id?: never;
          requirements_status?: Json | null;
          year?: number;
        };
        Relationships: [
          {
            foreignKeyName: 'text_content_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'category';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'text_content_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['emission_factor_category_id'];
          },
          {
            foreignKeyName: 'text_content_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['category_id'];
          },
          {
            foreignKeyName: 'text_content_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['child_category_id'];
          },
          {
            foreignKeyName: 'text_content_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['parent_category_id'];
          },
          {
            foreignKeyName: 'text_content_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_category_submissions';
            referencedColumns: ['category_id'];
          },
        ];
      };
      country: {
        Row: {
          code: string | null;
          id: number;
          name: string | null;
        };
        Insert: {
          code?: string | null;
          id?: never;
          name?: string | null;
        };
        Update: {
          code?: string | null;
          id?: never;
          name?: string | null;
        };
        Relationships: [];
      };
      currency_rate: {
        Row: {
          currency_code: string;
          rate_in_eur: number;
          year: number;
        };
        Insert: {
          currency_code: string;
          rate_in_eur: number;
          year: number;
        };
        Update: {
          currency_code?: string;
          rate_in_eur?: number;
          year?: number;
        };
        Relationships: [];
      };
      destination: {
        Row: {
          coordinates: unknown | null;
          country_code: string | null;
          id: number;
          name: string | null;
        };
        Insert: {
          coordinates?: unknown | null;
          country_code?: string | null;
          id?: never;
          name?: string | null;
        };
        Update: {
          coordinates?: unknown | null;
          country_code?: string | null;
          id?: never;
          name?: string | null;
        };
        Relationships: [];
      };
      distribution_contract: {
        Row: {
          account_id: string;
          address_id: number;
          city: string | null;
          distribution: string | null;
          households: number | null;
          id: number;
          period: string;
          total: string | null;
          transport_last_mile: string | null;
          transport_regional: string | null;
        };
        Insert: {
          account_id: string;
          address_id: number;
          city?: string | null;
          distribution?: string | null;
          households?: number | null;
          id?: number;
          period?: string;
          total?: string | null;
          transport_last_mile?: string | null;
          transport_regional?: string | null;
        };
        Update: {
          account_id?: string;
          address_id?: number;
          city?: string | null;
          distribution?: string | null;
          households?: number | null;
          id?: number;
          period?: string;
          total?: string | null;
          transport_last_mile?: string | null;
          transport_regional?: string | null;
        };
        Relationships: [
          {
            foreignKeyName: 'address_id_fkey';
            columns: ['address_id'];
            isOneToOne: false;
            referencedRelation: 'address';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'public_transport_city_fkey';
            columns: ['city', 'period', 'account_id'];
            isOneToOne: false;
            referencedRelation: 'transport_line_haul';
            referencedColumns: ['city', 'period', 'transporter'];
          },
          {
            foreignKeyName: 'transport_last_mile_fkey';
            columns: ['transport_last_mile', 'period', 'account_id'];
            isOneToOne: false;
            referencedRelation: 'transport_last_mile';
            referencedColumns: ['vehicle', 'period', 'transporter'];
          },
          {
            foreignKeyName: 'transport_regional_fkey';
            columns: ['transport_regional', 'period', 'account_id'];
            isOneToOne: false;
            referencedRelation: 'transport_regional';
            referencedColumns: ['regional', 'period', 'transporter'];
          },
        ];
      };
      emission: {
        Row: {
          activity_id: number;
          emission_factor_id: number;
          id: number;
          units_amount: number;
        };
        Insert: {
          activity_id: number;
          emission_factor_id: number;
          id?: number;
          units_amount: number;
        };
        Update: {
          activity_id?: number;
          emission_factor_id?: number;
          id?: number;
          units_amount?: number;
        };
        Relationships: [
          {
            foreignKeyName: 'emission_activity_id_fkey';
            columns: ['activity_id'];
            isOneToOne: false;
            referencedRelation: 'activity';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'emission_activity_id_fkey';
            columns: ['activity_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'emission_emission_factor_id_fkey';
            columns: ['emission_factor_id'];
            isOneToOne: false;
            referencedRelation: 'emission_factor';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'emission_emission_factor_id_fkey';
            columns: ['emission_factor_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['emission_factor_id'];
          },
          {
            foreignKeyName: 'emission_emission_factor_id_fkey';
            columns: ['emission_factor_id'];
            isOneToOne: false;
            referencedRelation: 'view_emission_factors';
            referencedColumns: ['id'];
          },
        ];
      };
      emission_factor: {
        Row: {
          account_id: string | null;
          category_id: number | null;
          co2_per_unit: number;
          country_id: number | null;
          created_at: string;
          id: number;
          nace_category_id: number | null;
          name: string;
          scope_1_factor: number;
          scope_2_factor: number;
          unit: string;
          year: number;
        };
        Insert: {
          account_id?: string | null;
          category_id?: number | null;
          co2_per_unit: number;
          country_id?: number | null;
          created_at?: string;
          id?: number;
          nace_category_id?: number | null;
          name: string;
          scope_1_factor?: number;
          scope_2_factor?: number;
          unit: string;
          year: number;
        };
        Update: {
          account_id?: string | null;
          category_id?: number | null;
          co2_per_unit?: number;
          country_id?: number | null;
          created_at?: string;
          id?: number;
          nace_category_id?: number | null;
          name?: string;
          scope_1_factor?: number;
          scope_2_factor?: number;
          unit?: string;
          year?: number;
        };
        Relationships: [
          {
            foreignKeyName: 'emission_factor_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'category';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'emission_factor_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['emission_factor_category_id'];
          },
          {
            foreignKeyName: 'emission_factor_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['category_id'];
          },
          {
            foreignKeyName: 'emission_factor_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['child_category_id'];
          },
          {
            foreignKeyName: 'emission_factor_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['parent_category_id'];
          },
          {
            foreignKeyName: 'emission_factor_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_category_submissions';
            referencedColumns: ['category_id'];
          },
          {
            foreignKeyName: 'emission_factor_country_id_fkey';
            columns: ['country_id'];
            isOneToOne: false;
            referencedRelation: 'country';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'emission_factor_country_id_fkey';
            columns: ['country_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['country_id'];
          },
          {
            foreignKeyName: 'emission_factor_nace_category_id_fkey';
            columns: ['nace_category_id'];
            isOneToOne: false;
            referencedRelation: 'nace_category';
            referencedColumns: ['id'];
          },
        ];
      };
      emission_type: {
        Row: {
          emission_type: string;
        };
        Insert: {
          emission_type: string;
        };
        Update: {
          emission_type?: string;
        };
        Relationships: [];
      };
      nace_category: {
        Row: {
          category_id: number | null;
          id: number;
          name: string | null;
          parent_nace_category_id: number | null;
        };
        Insert: {
          category_id?: number | null;
          id?: never;
          name?: string | null;
          parent_nace_category_id?: number | null;
        };
        Update: {
          category_id?: number | null;
          id?: never;
          name?: string | null;
          parent_nace_category_id?: number | null;
        };
        Relationships: [
          {
            foreignKeyName: 'nace_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'category';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'nace_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['emission_factor_category_id'];
          },
          {
            foreignKeyName: 'nace_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['category_id'];
          },
          {
            foreignKeyName: 'nace_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['child_category_id'];
          },
          {
            foreignKeyName: 'nace_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['parent_category_id'];
          },
          {
            foreignKeyName: 'nace_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_category_submissions';
            referencedColumns: ['category_id'];
          },
          {
            foreignKeyName: 'nace_category_parent_nace_category_id_fkey';
            columns: ['parent_nace_category_id'];
            isOneToOne: false;
            referencedRelation: 'nace_category';
            referencedColumns: ['id'];
          },
        ];
      };
      order: {
        Row: {
          account_id: string | null;
          created_at: string | null;
          customer: string | null;
          customer_no: string | null;
          delivery_date: string;
          distribution_contract_id: number | null;
          id: number;
          metadata: Json | null;
          product: string | null;
          tracking_id: string | null;
          transporter: string | null;
          updated_at: string | null;
          volume: number | null;
          weight: number | null;
        };
        Insert: {
          account_id?: string | null;
          created_at?: string | null;
          customer?: string | null;
          customer_no?: string | null;
          delivery_date: string;
          distribution_contract_id?: number | null;
          id?: number;
          metadata?: Json | null;
          product?: string | null;
          tracking_id?: string | null;
          transporter?: string | null;
          updated_at?: string | null;
          volume?: number | null;
          weight?: number | null;
        };
        Update: {
          account_id?: string | null;
          created_at?: string | null;
          customer?: string | null;
          customer_no?: string | null;
          delivery_date?: string;
          distribution_contract_id?: number | null;
          id?: number;
          metadata?: Json | null;
          product?: string | null;
          tracking_id?: string | null;
          transporter?: string | null;
          updated_at?: string | null;
          volume?: number | null;
          weight?: number | null;
        };
        Relationships: [
          {
            foreignKeyName: 'distribution_contract_fkey';
            columns: ['distribution_contract_id'];
            isOneToOne: false;
            referencedRelation: 'distribution_contract';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'distribution_contract_fkey';
            columns: ['distribution_contract_id'];
            isOneToOne: false;
            referencedRelation: 'orders_with_emissions';
            referencedColumns: ['distribution_contract_id'];
          },
        ];
      };
      report: {
        Row: {
          account_id: string;
          created_at: string;
          id: number;
          name: string;
          period: number;
          slug: string | null;
          user_id: string;
        };
        Insert: {
          account_id: string;
          created_at?: string;
          id?: number;
          name: string;
          period: number;
          slug?: string | null;
          user_id?: string;
        };
        Update: {
          account_id?: string;
          created_at?: string;
          id?: number;
          name?: string;
          period?: number;
          slug?: string | null;
          user_id?: string;
        };
        Relationships: [];
      };
      report_status: {
        Row: {
          account_id: string | null;
          created_at: string;
          id: number;
          name: string;
          user_id: string | null;
        };
        Insert: {
          account_id?: string | null;
          created_at?: string;
          id?: number;
          name: string;
          user_id?: string | null;
        };
        Update: {
          account_id?: string | null;
          created_at?: string;
          id?: number;
          name?: string;
          user_id?: string | null;
        };
        Relationships: [];
      };
      transport_last_mile: {
        Row: {
          emission: number;
          emission_type: string | null;
          energy: number | null;
          period: string;
          transporter: string;
          vehicle: string;
        };
        Insert: {
          emission: number;
          emission_type?: string | null;
          energy?: number | null;
          period?: string;
          transporter: string;
          vehicle: string;
        };
        Update: {
          emission?: number;
          emission_type?: string | null;
          energy?: number | null;
          period?: string;
          transporter?: string;
          vehicle?: string;
        };
        Relationships: [
          {
            foreignKeyName: 'public_transport_last_mile_emission_type_fkey';
            columns: ['emission_type'];
            isOneToOne: false;
            referencedRelation: 'emission_type';
            referencedColumns: ['emission_type'];
          },
        ];
      };
      transport_line_haul: {
        Row: {
          city: string;
          emission: number;
          emission_type: string;
          energy: number | null;
          period: string;
          transporter: string;
        };
        Insert: {
          city: string;
          emission?: number;
          emission_type?: string;
          energy?: number | null;
          period?: string;
          transporter: string;
        };
        Update: {
          city?: string;
          emission?: number;
          emission_type?: string;
          energy?: number | null;
          period?: string;
          transporter?: string;
        };
        Relationships: [
          {
            foreignKeyName: 'public_transport_line_haul_emission_type_fkey';
            columns: ['emission_type'];
            isOneToOne: false;
            referencedRelation: 'emission_type';
            referencedColumns: ['emission_type'];
          },
        ];
      };
      transport_regional: {
        Row: {
          emission: number | null;
          emission_type: string | null;
          energy: number | null;
          period: string;
          regional: string;
          transporter: string;
        };
        Insert: {
          emission?: number | null;
          emission_type?: string | null;
          energy?: number | null;
          period?: string;
          regional: string;
          transporter: string;
        };
        Update: {
          emission?: number | null;
          emission_type?: string | null;
          energy?: number | null;
          period?: string;
          regional?: string;
          transporter?: string;
        };
        Relationships: [
          {
            foreignKeyName: 'public_transport_regional_emission_type_fkey';
            columns: ['emission_type'];
            isOneToOne: false;
            referencedRelation: 'emission_type';
            referencedColumns: ['emission_type'];
          },
        ];
      };
    };
    Views: {
      green_zipcodes_mv: {
        Row: {
          period: string | null;
          zipcode: number | null;
        };
        Relationships: [];
      };
      orders_with_emissions: {
        Row: {
          account_id: string | null;
          city: string | null;
          customer: string | null;
          delivery_date: string | null;
          distribution_contract_id: number | null;
          last_mile_emission: number | null;
          last_mile_energy: number | null;
          line_haul_emission: number | null;
          line_haul_energy: number | null;
          name: string | null;
          order_id: number | null;
          period: string | null;
          regional_emission: number | null;
          regional_energy: number | null;
          slug: string | null;
          volume: number | null;
          weight: number | null;
        };
        Relationships: [
          {
            foreignKeyName: 'public_transport_city_fkey';
            columns: ['city', 'period', 'account_id'];
            isOneToOne: false;
            referencedRelation: 'transport_line_haul';
            referencedColumns: ['city', 'period', 'transporter'];
          },
        ];
      };
      view_accounting_categories: {
        Row: {
          account_id: string | null;
          account_name: string | null;
          category_id: number | null;
          category_name: string | null;
          emission_factor_id: number | null;
          emission_factor_name: string | null;
          external_accounting_category_id: string | null;
          id: number | null;
          nace_category_id: number | null;
          nace_category_name: string | null;
          name: string | null;
          parent_accounting_category_id: number | null;
          parent_accounting_category_name: string | null;
        };
        Relationships: [
          {
            foreignKeyName: 'accounting_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'category';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'accounting_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['emission_factor_category_id'];
          },
          {
            foreignKeyName: 'accounting_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['category_id'];
          },
          {
            foreignKeyName: 'accounting_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['child_category_id'];
          },
          {
            foreignKeyName: 'accounting_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['parent_category_id'];
          },
          {
            foreignKeyName: 'accounting_category_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_category_submissions';
            referencedColumns: ['category_id'];
          },
          {
            foreignKeyName: 'accounting_category_emission_factor_id_fkey';
            columns: ['emission_factor_id'];
            isOneToOne: false;
            referencedRelation: 'emission_factor';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'accounting_category_emission_factor_id_fkey';
            columns: ['emission_factor_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['emission_factor_id'];
          },
          {
            foreignKeyName: 'accounting_category_emission_factor_id_fkey';
            columns: ['emission_factor_id'];
            isOneToOne: false;
            referencedRelation: 'view_emission_factors';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'accounting_category_nace_category_id_fkey';
            columns: ['nace_category_id'];
            isOneToOne: false;
            referencedRelation: 'nace_category';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'accounting_category_parent_accounting_category_id_fkey';
            columns: ['parent_accounting_category_id'];
            isOneToOne: false;
            referencedRelation: 'accounting_category';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'accounting_category_parent_accounting_category_id_fkey';
            columns: ['parent_accounting_category_id'];
            isOneToOne: false;
            referencedRelation: 'view_accounting_categories';
            referencedColumns: ['id'];
          },
        ];
      };
      view_activities_with_emissions: {
        Row: {
          account_id: string | null;
          account_slug: string | null;
          category_id: number | null;
          category_slug: string | null;
          co2: number | null;
          co2_per_unit: number | null;
          country_id: number | null;
          country_name: string | null;
          customer_account_id: string | null;
          customer_account_name: string | null;
          duration: number | null;
          emission_factor_category_id: number | null;
          emission_factor_category_name: string | null;
          emission_factor_id: number | null;
          emission_factor_name: string | null;
          emission_id: number | null;
          id: number | null;
          metadata: Json | null;
          month: number | null;
          supplier_account_id: string | null;
          supplier_account_name: string | null;
          unit: string | null;
          units_amount: number | null;
          year: number | null;
        };
        Relationships: [];
      };
      view_categories_overview: {
        Row: {
          account_id: string | null;
          child_category_accounts: Json | null;
          child_category_can_input: boolean | null;
          child_category_can_report: boolean | null;
          child_category_id: number | null;
          child_category_name: string | null;
          child_category_position: number | null;
          child_category_progress: number | null;
          child_category_reference: string | null;
          child_category_slug: string | null;
          child_category_status: Database['public']['Enums']['project_status'] | null;
          child_category_users: Json | null;
          parent_category_can_input: boolean | null;
          parent_category_can_report: boolean | null;
          parent_category_id: number | null;
          parent_category_name: string | null;
          parent_category_parent_category_id: number | null;
          parent_category_parent_category_slug: string | null;
          parent_category_position: number | null;
          parent_category_progress: number | null;
          parent_category_reference: string | null;
          parent_category_slug: string | null;
          parent_category_status: Database['public']['Enums']['project_status'] | null;
        };
        Relationships: [
          {
            foreignKeyName: 'category_parent_category_id_fkey';
            columns: ['parent_category_parent_category_id'];
            isOneToOne: false;
            referencedRelation: 'category';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'category_parent_category_id_fkey';
            columns: ['parent_category_parent_category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['emission_factor_category_id'];
          },
          {
            foreignKeyName: 'category_parent_category_id_fkey';
            columns: ['parent_category_parent_category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['category_id'];
          },
          {
            foreignKeyName: 'category_parent_category_id_fkey';
            columns: ['parent_category_parent_category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['child_category_id'];
          },
          {
            foreignKeyName: 'category_parent_category_id_fkey';
            columns: ['parent_category_parent_category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['parent_category_id'];
          },
          {
            foreignKeyName: 'category_parent_category_id_fkey';
            columns: ['parent_category_parent_category_id'];
            isOneToOne: false;
            referencedRelation: 'view_category_submissions';
            referencedColumns: ['category_id'];
          },
        ];
      };
      view_category_submissions: {
        Row: {
          account_id: string | null;
          category_ai_instructions: string | null;
          category_description: string | null;
          category_id: number | null;
          category_name: string | null;
          category_slug: string | null;
          comments: string | null;
          content: Json | null;
          parent_category_id: number | null;
          position: number | null;
          requirements_status: Json | null;
          year: number | null;
        };
        Relationships: [
          {
            foreignKeyName: 'category_parent_category_id_fkey';
            columns: ['parent_category_id'];
            isOneToOne: false;
            referencedRelation: 'category';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'category_parent_category_id_fkey';
            columns: ['parent_category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['emission_factor_category_id'];
          },
          {
            foreignKeyName: 'category_parent_category_id_fkey';
            columns: ['parent_category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['category_id'];
          },
          {
            foreignKeyName: 'category_parent_category_id_fkey';
            columns: ['parent_category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['child_category_id'];
          },
          {
            foreignKeyName: 'category_parent_category_id_fkey';
            columns: ['parent_category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['parent_category_id'];
          },
          {
            foreignKeyName: 'category_parent_category_id_fkey';
            columns: ['parent_category_id'];
            isOneToOne: false;
            referencedRelation: 'view_category_submissions';
            referencedColumns: ['category_id'];
          },
        ];
      };
      view_emission_factors: {
        Row: {
          account_id: string | null;
          account_name: string | null;
          category_id: number | null;
          category_name: string | null;
          co2_per_unit: number | null;
          country_id: number | null;
          country_name: string | null;
          created_at: string | null;
          id: number | null;
          nace_category_id: number | null;
          nace_category_name: string | null;
          name: string | null;
          scope_1_factor: number | null;
          scope_2_factor: number | null;
          unit: string | null;
          year: number | null;
        };
        Relationships: [
          {
            foreignKeyName: 'emission_factor_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'category';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'emission_factor_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['emission_factor_category_id'];
          },
          {
            foreignKeyName: 'emission_factor_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['category_id'];
          },
          {
            foreignKeyName: 'emission_factor_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['child_category_id'];
          },
          {
            foreignKeyName: 'emission_factor_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['parent_category_id'];
          },
          {
            foreignKeyName: 'emission_factor_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_category_submissions';
            referencedColumns: ['category_id'];
          },
          {
            foreignKeyName: 'emission_factor_country_id_fkey';
            columns: ['country_id'];
            isOneToOne: false;
            referencedRelation: 'country';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'emission_factor_country_id_fkey';
            columns: ['country_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['country_id'];
          },
          {
            foreignKeyName: 'emission_factor_nace_category_id_fkey';
            columns: ['nace_category_id'];
            isOneToOne: false;
            referencedRelation: 'nace_category';
            referencedColumns: ['id'];
          },
        ];
      };
      view_suppliers: {
        Row: {
          account_id: string | null;
          business_description: string | null;
          emission_factor_id: number | null;
          emission_factor_name: string | null;
          from_date: string | null;
          id: number | null;
          include_share: number | null;
          nace_category_id: number | null;
          nace_category_name: string | null;
          name: string | null;
          organization_number: string | null;
          other_account_id: string | null;
          primary_owner_user_id: string | null;
          private_metadata: Json | null;
          public_metadata: Json | null;
          slug: string | null;
          website_url: string | null;
        };
        Relationships: [
          {
            foreignKeyName: 'accounts_emission_factor_id_fkey';
            columns: ['emission_factor_id'];
            isOneToOne: false;
            referencedRelation: 'emission_factor';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'accounts_emission_factor_id_fkey';
            columns: ['emission_factor_id'];
            isOneToOne: false;
            referencedRelation: 'view_activities_with_emissions';
            referencedColumns: ['emission_factor_id'];
          },
          {
            foreignKeyName: 'accounts_emission_factor_id_fkey';
            columns: ['emission_factor_id'];
            isOneToOne: false;
            referencedRelation: 'view_emission_factors';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'accounts_nace_category_id_fkey';
            columns: ['nace_category_id'];
            isOneToOne: false;
            referencedRelation: 'nace_category';
            referencedColumns: ['id'];
          },
        ];
      };
    };
    Functions: {
      accept_invitation: {
        Args: {
          lookup_invitation_token: string;
        };
        Returns: Json;
      };
      check_order_access: {
        Args: {
          dist_contract_id: number;
        };
        Returns: boolean;
      };
      create_account: {
        Args: {
          slug?: string;
          name?: string;
        };
        Returns: Json;
      };
      create_invitation: {
        Args: {
          account_id: string;
          account_role: Database['basejump']['Enums']['account_role'];
          invitation_type: Database['basejump']['Enums']['invitation_type'];
        };
        Returns: Json;
      };
      current_user_account_role: {
        Args: {
          account_id: string;
        };
        Returns: Json;
      };
      delete_invitation: {
        Args: {
          invitation_id: string;
        };
        Returns: undefined;
      };
      get_account: {
        Args: {
          account_id: string;
        };
        Returns: Json;
      };
      get_account_billing_status: {
        Args: {
          account_id: string;
        };
        Returns: Json;
      };
      get_account_by_slug: {
        Args: {
          slug: string;
        };
        Returns: Json;
      };
      get_account_id: {
        Args: {
          slug: string;
        };
        Returns: string;
      };
      get_account_invitations: {
        Args: {
          account_id: string;
          results_limit?: number;
          results_offset?: number;
        };
        Returns: Json;
      };
      get_account_members: {
        Args: {
          account_id: string;
          results_limit?: number;
          results_offset?: number;
        };
        Returns: Json;
      };
      get_account_slug: {
        Args: {
          account_id: string;
        };
        Returns: string;
      };
      get_accounts: {
        Args: Record<PropertyKey, never>;
        Returns: Json;
      };
      get_accounts_with_category: {
        Args: {
          category_slug: string;
        };
        Returns: {
          id: string;
          slug: string;
          name: string;
          status: Database['public']['Enums']['project_status'];
        }[];
      };
      get_all_group_accounts: {
        Args: {
          current_account_slug: string;
        };
        Returns: {
          id: string;
          parent_account_id: string;
          name: string;
          slug: string;
          primary_owner_user_id: string;
          primary_owner_user_email: string;
          primary_owner_personal_account_id: string;
          primary_owner_personal_account_name: string;
        }[];
      };
      get_child_accounts: {
        Args: {
          parent_account_slug: string;
        };
        Returns: {
          id: string;
          parent_account_id: string;
          name: string;
          slug: string;
        }[];
      };
      get_emissions_summary: {
        Args: {
          start_date: string;
          end_date: string;
          account_ids: string[];
          customer_name?: string;
        };
        Returns: {
          account_id: string;
          slug: string;
          name: string;
          orders: number;
          last_mile_emission: number;
          regional_emission: number;
          line_haul_emission: number;
          weight: number;
          volume: number;
          last_mile_energy: number;
          regional_energy: number;
          line_haul_energy: number;
        }[];
      };
      get_emissions_summary_grouped_by_city: {
        Args: {
          start_date: string;
          end_date: string;
          account_ids: string[];
          customer_name?: string;
        };
        Returns: {
          city: string;
          orders: number;
          last_mile_emission: number;
          regional_emission: number;
          line_haul_emission: number;
          weight: number;
          volume: number;
          last_mile_energy: number;
          regional_energy: number;
          line_haul_energy: number;
        }[];
      };
      get_emissions_summary_grouped_by_period: {
        Args: {
          start_date: string;
          end_date: string;
          account_ids: string[];
          customer_name: string;
        };
        Returns: {
          account_id: string;
          slug: string;
          name: string;
          period: string;
          orders: number;
          last_mile_emission: number;
          regional_emission: number;
          line_haul_emission: number;
          weight: number;
          volume: number;
          last_mile_energy: number;
          regional_energy: number;
          line_haul_energy: number;
        }[];
      };
      get_parent_accounts: {
        Args: {
          child_account_slug: string;
        };
        Returns: {
          id: string;
          parent_account_id: string;
          name: string;
          slug: string;
        }[];
      };
      get_personal_account: {
        Args: Record<PropertyKey, never>;
        Returns: Json;
      };
      get_view_categories_overview: {
        Args: {
          account_slug: string;
        };
        Returns: {
          account_id: string | null;
          child_category_accounts: Json | null;
          child_category_can_input: boolean | null;
          child_category_can_report: boolean | null;
          child_category_id: number | null;
          child_category_name: string | null;
          child_category_position: number | null;
          child_category_progress: number | null;
          child_category_reference: string | null;
          child_category_slug: string | null;
          child_category_status: Database['public']['Enums']['project_status'] | null;
          child_category_users: Json | null;
          parent_category_can_input: boolean | null;
          parent_category_can_report: boolean | null;
          parent_category_id: number | null;
          parent_category_name: string | null;
          parent_category_parent_category_id: number | null;
          parent_category_parent_category_slug: string | null;
          parent_category_position: number | null;
          parent_category_progress: number | null;
          parent_category_reference: string | null;
          parent_category_slug: string | null;
          parent_category_status: Database['public']['Enums']['project_status'] | null;
        }[];
      };
      is_member_of_company_group: {
        Args: {
          group_slug: string;
        };
        Returns: boolean;
      };
      lookup_invitation: {
        Args: {
          lookup_invitation_token: string;
        };
        Returns: Json;
      };
      remove_account_member: {
        Args: {
          account_id: string;
          user_id: string;
        };
        Returns: undefined;
      };
      service_role_upsert_customer_subscription: {
        Args: {
          account_id: string;
          customer?: Json;
          subscription?: Json;
        };
        Returns: undefined;
      };
      set_parent_account: {
        Args: {
          child_account_id: string;
          parent_account_id: string;
          relation_type?: Database['public']['Enums']['account_relation_type'];
        };
        Returns: undefined;
      };
      update_account: {
        Args: {
          account_id: string;
          slug?: string;
          name?: string;
          public_metadata?: Json;
          replace_metadata?: boolean;
        };
        Returns: Json;
      };
      update_account_user_role: {
        Args: {
          account_id: string;
          user_id: string;
          new_account_role: Database['basejump']['Enums']['account_role'];
          make_primary_owner?: boolean;
        };
        Returns: undefined;
      };
    };
    Enums: {
      account_relation_type: 'owner-of' | 'customer-to';
      account_role: 'owner' | 'member';
      project_status:
        | 'not-started'
        | 'in-progress'
        | 'in-review'
        | 'completed'
        | 'in-parent-review';
    };
    CompositeTypes: {
      [_ in never]: never;
    };
  };
}

type PublicSchema = Database[Extract<keyof Database, 'public'>];

export type Tables<
  PublicTableNameOrOptions extends
    | keyof (PublicSchema['Tables'] & PublicSchema['Views'])
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof (Database[PublicTableNameOrOptions['schema']]['Tables'] &
        Database[PublicTableNameOrOptions['schema']]['Views'])
    : never = never,
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? (Database[PublicTableNameOrOptions['schema']]['Tables'] &
      Database[PublicTableNameOrOptions['schema']]['Views'])[TableName] extends {
      Row: infer R;
    }
    ? R
    : never
  : PublicTableNameOrOptions extends keyof (PublicSchema['Tables'] & PublicSchema['Views'])
    ? (PublicSchema['Tables'] & PublicSchema['Views'])[PublicTableNameOrOptions] extends {
        Row: infer R;
      }
      ? R
      : never
    : never;

export type TablesInsert<
  PublicTableNameOrOptions extends keyof PublicSchema['Tables'] | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicTableNameOrOptions['schema']]['Tables']
    : never = never,
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? Database[PublicTableNameOrOptions['schema']]['Tables'][TableName] extends {
      Insert: infer I;
    }
    ? I
    : never
  : PublicTableNameOrOptions extends keyof PublicSchema['Tables']
    ? PublicSchema['Tables'][PublicTableNameOrOptions] extends {
        Insert: infer I;
      }
      ? I
      : never
    : never;

export type TablesUpdate<
  PublicTableNameOrOptions extends keyof PublicSchema['Tables'] | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicTableNameOrOptions['schema']]['Tables']
    : never = never,
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? Database[PublicTableNameOrOptions['schema']]['Tables'][TableName] extends {
      Update: infer U;
    }
    ? U
    : never
  : PublicTableNameOrOptions extends keyof PublicSchema['Tables']
    ? PublicSchema['Tables'][PublicTableNameOrOptions] extends {
        Update: infer U;
      }
      ? U
      : never
    : never;

export type Enums<
  PublicEnumNameOrOptions extends keyof PublicSchema['Enums'] | { schema: keyof Database },
  EnumName extends PublicEnumNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicEnumNameOrOptions['schema']]['Enums']
    : never = never,
> = PublicEnumNameOrOptions extends { schema: keyof Database }
  ? Database[PublicEnumNameOrOptions['schema']]['Enums'][EnumName]
  : PublicEnumNameOrOptions extends keyof PublicSchema['Enums']
    ? PublicSchema['Enums'][PublicEnumNameOrOptions]
    : never;

export type CompositeTypes<
  PublicCompositeTypeNameOrOptions extends
    | keyof PublicSchema['CompositeTypes']
    | { schema: keyof Database },
  CompositeTypeName extends PublicCompositeTypeNameOrOptions extends {
    schema: keyof Database;
  }
    ? keyof Database[PublicCompositeTypeNameOrOptions['schema']]['CompositeTypes']
    : never = never,
> = PublicCompositeTypeNameOrOptions extends { schema: keyof Database }
  ? Database[PublicCompositeTypeNameOrOptions['schema']]['CompositeTypes'][CompositeTypeName]
  : PublicCompositeTypeNameOrOptions extends keyof PublicSchema['CompositeTypes']
    ? PublicSchema['CompositeTypes'][PublicCompositeTypeNameOrOptions]
    : never;
