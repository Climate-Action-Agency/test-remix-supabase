import { Database, Tables } from './supabase/index'; // Why does this 'import' make NameAndId type not work?

// ----- Supabase types -----
declare global {
  // type Something = Tables<"something">;
  // type SomethingInsert = Database['public']['Tables']['something']['Insert'];
  // type SomethingUpdate = Database['public']['Tables']['something']['Update'];
  // type ViewSomething = Database['public']['Views']['view_something']['Row'];
  // type FunctionGetSomethingArguments = Database['public']['Functions']['get_something']['Args'];
  // type FunctionGetSomethingReturns = Database['public']['Functions']['get_something']['Returns'] | null;
  // type SomethingEnum = Database['public']['Enums']['something'];

  type AccountAccount = Tables<'account_account'>;
  type AccountCategory = Tables<'account_category'>;
  type AccountCategoryInsert = Database['public']['Tables']['account_category']['Insert'];
  type AccountCategoryUser = Tables<'account_category_user'>;
  type AccountCategoryUserInsert = Database['public']['Tables']['account_category_user']['Insert'];
  type Category = Tables<'category'>;
  type CategoryStatus = Database['public']['Enums']['project_status'];

  type AccountingCategory = Tables<'accounting_category'>;

  type Order = Tables<'order'>;
  type OrdersSummary = Order & {
    city: string;
    longitude: number;
    latitude: number;
    orders: number;
  };

  type Activity = Tables<'activity'>;
  type ActivityInsert = Database['public']['Tables']['activity']['Insert'];
  type Emission = Tables<'emission'>;
  type EmissionFactor = Tables<'emission_factor'>;
  type ActivityMetadata = Record<string, string | number | boolean>;
  type CurrencyRate = Tables<'currency_rate'>;

  // ----- Other types -----

  interface Error {
    message: string;
    status: number;
    data?: string;
  }

  interface WithId {
    id: number;
  }

  interface NameAndId {
    id: number;
    name: string | null;
  }

  interface DataPageAndSort {
    pageNr?: number;
    pageSize?: number;
    sortBy?: string;
    sortOrder?: 'asc' | 'desc';
    // filter?: string;
  }

  // Generic filters: extend this for custom filters that matches the source data better
  interface DataFilters {
    search?: string; // Free-form text search
    id?: number;
    name?: string;
  }

  interface InputField {
    name: string; // field name in database
    friendlyName?: string; // e.g. show in table header
    placeholder?: string; // e.g. input field placeholder
    description?: string; // e.g. longer explanation
    type?: 'text' | 'number' | 'date' | 'boolean' | 'list' | 'status' | 'image' | 'link';
    listSource?: keyof ListSources; // For type = 'list'. Note: must add to interface 'ListSources' below.
    required?: boolean;
  }

  interface ListSources {
    destinations?: NameAndId[] | null;
    emissionFactors?: NameAndId[] | null;
    currencies?: NameAndId[] | null;
    categories?: NameAndId[] | null;
    accountingCategories?: NameAndId[] | null;
    naceCategories?: NameAndId[] | null;
    suppliers?: NameAndId[] | null;
  }

  // ----- JSON Forms types -----

  interface JSONFormsRequirements {
    req1?: boolean;
    req2?: boolean;
    req3?: boolean;
    req4?: boolean;
    req5?: boolean;
    req6?: boolean;
    req7?: boolean;
    req8?: boolean;
    req9?: boolean;
    req10?: boolean;
  }

  interface JSONFormsSchema {
    description: string;
    requirements: JSONFormsRequirements;
  }

  interface JSONFormsUiSchemaElement {
    type: 'Control' | 'Label';
    scope: string;
    label?: string;
    text?: string;
    options?: {
      multi?: boolean;
      styles?: Record<string, Record<string, string>>;
    };
  }

  interface JSONFormsUiSchema {
    type: 'VerticalLayout' | 'HorizontalLayout';
    elements: JSONFormsUiSchemaElement[];
  }

  interface JSONFormsCombinedSchema {
    properties: {
      schema: JSONFormsSchema;
      uischema: JSONFormsUiSchema;
    };
  }

  type JSONFormsData = Record<string, unknown>;
  type JSONFormsDataActivity = JSONFormsData & { table: Record<string, unknown>[] };
  type JSONFormsDataCategorySubmission = JSONFormsData & {
    description: string;
    requirements: Record<string, boolean>;
  };

  // Can be category_submission or activity
  interface JSONFormsDataRow {
    year?: number;
    form: JSONFormsData;
    requirements?: JSONFormsData;
  }

  interface TabHandle {
    name: string;
  }
}
