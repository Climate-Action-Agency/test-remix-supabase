export type Json = string | number | boolean | null | { [key: string]: Json | undefined } | Json[];

export interface Database {
  basejump: {
    Tables: {
      account_user: {
        Row: {
          account_id: string;
          account_role: Database['basejump']['Enums']['account_role'];
          user_id: string;
        };
        Insert: {
          account_id: string;
          account_role: Database['basejump']['Enums']['account_role'];
          user_id: string;
        };
        Update: {
          account_id?: string;
          account_role?: Database['basejump']['Enums']['account_role'];
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
          created_at: string | null;
          created_by: string | null;
          id: string;
          name: string | null;
          personal_account: boolean;
          primary_owner_user_id: string;
          private_metadata: Json | null;
          public_metadata: Json | null;
          slug: string | null;
          updated_at: string | null;
          updated_by: string | null;
        };
        Insert: {
          created_at?: string | null;
          created_by?: string | null;
          id?: string;
          name?: string | null;
          personal_account?: boolean;
          primary_owner_user_id?: string;
          private_metadata?: Json | null;
          public_metadata?: Json | null;
          slug?: string | null;
          updated_at?: string | null;
          updated_by?: string | null;
        };
        Update: {
          created_at?: string | null;
          created_by?: string | null;
          id?: string;
          name?: string | null;
          personal_account?: boolean;
          primary_owner_user_id?: string;
          private_metadata?: Json | null;
          public_metadata?: Json | null;
          slug?: string | null;
          updated_at?: string | null;
          updated_by?: string | null;
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
      account_role: 'owner' | 'member';
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
      category: {
        Row: {
          ai_instructions: string | null;
          created_at: string;
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
            foreignKeyName: 'category_submission_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'category';
            referencedColumns: ['id'];
          },
          {
            foreignKeyName: 'category_submission_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['child_category_id'];
          },
          {
            foreignKeyName: 'category_submission_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_categories_overview';
            referencedColumns: ['parent_category_id'];
          },
          {
            foreignKeyName: 'category_submission_category_id_fkey';
            columns: ['category_id'];
            isOneToOne: false;
            referencedRelation: 'view_category_submissions';
            referencedColumns: ['category_id'];
          },
        ];
      };
    };
    Views: {
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
    };
    Functions: {
      accept_invitation: {
        Args: {
          lookup_invitation_token: string;
        };
        Returns: Json;
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
      get_accounts: {
        Args: Record<PropertyKey, never>;
        Returns: Json;
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
        | 'in-parent-review'
        | 'completed';
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
