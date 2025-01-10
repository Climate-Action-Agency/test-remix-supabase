import {
  Link,
  Outlet,
  useMatches,
  useLoaderData,
  useNavigate,
  useLocation,
} from '@remix-run/react';
import { InfoIcon, ListTodoIcon, UsersIcon, WrenchIcon, X } from 'lucide-react';
import { clsx } from 'clsx';

import { cn } from '~/@/lib/utils';
import { Tabs, TabsList, TabsTrigger } from '~/@/components/ui/tabs';
import { loader } from '~/.server/loaders/formDataCategorySubmission';
import useUser from '~/hooks/useUser';
import { useSuperAdmin } from '~/hooks/useSuperAdmin';
import { JsonFormRenderer } from '../jsonforms/JsonFormRenderer';
import { useState } from 'react';
import { useFetcherWithToast } from '~/hooks/useFetcherWithToast';
import useDebounce from '~/hooks/useDebounce';
import { Button } from '~/@/components/ui/button';
import { Switch } from '~/@/components/ui/switch';
import { Separator } from '~/@/components/ui/separator';
import { User } from '@supabase/supabase-js';
import { AccountMember } from '~/.server/services/accounts';

interface StatusAction {
  nextStatus?: string;
  nextStatusLabel?: string;
  prevStatus?: string;
  prevStatusLabel?: string;
}

const statusActions: Record<CategoryStatus, StatusAction> = {
  'not-started': { nextStatus: 'in-review', nextStatusLabel: 'Submit for Review' },
  'in-progress': {
    nextStatus: 'in-review',
    nextStatusLabel: 'Submit for Review',
    prevStatus: 'not-started',
    prevStatusLabel: 'Set as Not Started',
  },
  'in-review': {
    nextStatus: 'in-parent-review',
    nextStatusLabel: 'Submit for Parent Review',
    prevStatus: 'in-progress',
    prevStatusLabel: 'Reopen',
  },
  'in-parent-review': {
    nextStatus: 'completed',
    nextStatusLabel: 'Mark as Completed',
    prevStatus: 'in-progress',
    prevStatusLabel: 'Reopen',
  },
  completed: { prevStatus: 'in-progress', prevStatusLabel: 'Reopen' },
};

export const getUserRole = ({
  user,
  members,
}: {
  user: User;
  members: AccountMember[];
}): string | undefined => {
  return members.find((member) => member.user_id === user.id)?.account_role;
};

export const DetailsSidePanel: React.FC = () => {
  const { isSuperAdmin } = useSuperAdmin();
  const matches = useMatches();
  const currentTabHandle = (matches.find((m) => m.handle)?.handle ?? 'about') as TabHandle;

  // Category status, canInput is submitted to ...$subCategorySlug route
  const location = useLocation();
  const subCategoryActionPath =
    currentTabHandle.name === 'about'
      ? location.pathname
      : location.pathname.split('/').slice(0, -1).join('/');

  const navigate = useNavigate();
  const onClose = () => navigate('..');
  const isOpen = true;

  const { account, childAccounts, members, category, subCategory, formDataRow } =
    useLoaderData<typeof loader>();
  const { user } = useUser();

  const [formData, setFormData] = useState<JSONFormsData>(formDataRow?.form);
  const [canInput, setCanInput] = useState<boolean>(category.child_category_can_input ?? true);
  const combinedSchema = subCategory.form_schema as unknown as JSONFormsCombinedSchema;

  const userRole = user && members && getUserRole({ user, members });

  // JSON Forms
  const formDataFetcher = useFetcherWithToast({ successTitle: 'Saved the form data' });
  useDebounce(formData, 1500, (value) => {
    if (value !== formDataRow?.form) {
      const data = new FormData();
      data.append('subAction', 'formData');
      data.append('category_id', subCategory.id);
      data.append('formDataJson', JSON.stringify(formData));
      formDataFetcher.submit(data, { method: 'POST' });
    }
  });

  // Toggle account_category.can_input
  const handleCanInputChange = (value: boolean): void => {
    setCanInput(value);
    if (value !== category.child_category_can_input) {
      const data = new FormData();
      data.append('subAction', value ? 'enableCategory' : 'disableCategory');
      data.append('toastMessage', value ? 'enabled' : 'disabled');
      data.append('category_id', subCategory.id);
      categoryCanInputFetcher.submit(data, { method: 'POST' });
    }
  };
  const categoryCanInputFetcher = useFetcherWithToast({
    successTitle: 'This category (and sub-categories) is now {formField} for input',
    formField: 'toastMessage',
  });

  // Change account_category.status
  const currentStatusAction = statusActions[category.child_category_status ?? 'not-started'];
  const categoryStatusFetcher = useFetcherWithToast({
    successTitle: 'Status changed to “{formField}”',
    formField: 'status',
  });

  return (
    <div
      className={`fixed inset-y-0 right-0 w-full xl:w-3/4  bg-white shadow-lg transform transition-transform duration-500 ease-in-out ${isOpen ? 'translate-x-0' : 'translate-x-full'}`}
    >
      {category && (
        <div className='flex'>
          <div className='w-2/3'>
            <div className='flex w-full justify-end'>
              <button
                onClick={onClose}
                className='text-gray-500 hover:text-gray-700 fixed top-2 left-2'
              >
                <X className='w-6 h-6' />
              </button>

              <div className='flex items-center space-x-1'>
                <span>Include this category/disclosure:</span>
                <Switch checked={canInput} onCheckedChange={handleCanInputChange} />
              </div>

              <Separator orientation='vertical' className='h-10 ml-2 mt-2' />

              <categoryStatusFetcher.Form
                method='post'
                action={subCategoryActionPath}
                className={clsx('m-2 text-right', { hidden: userRole !== 'owner' })}
              >
                <input type='hidden' name='subAction' value='setAccountCategoryStatus' />
                <input type='hidden' name='category_id' value={subCategory.id} />
                {currentStatusAction.nextStatus && (
                  <Button
                    type='submit'
                    disabled={!canInput}
                    name='status'
                    value={currentStatusAction.nextStatus}
                  >
                    {currentStatusAction.nextStatusLabel}
                  </Button>
                )}
                {currentStatusAction.prevStatus && (
                  <Button
                    type='submit'
                    disabled={!canInput}
                    name='status'
                    value={currentStatusAction.prevStatus}
                    variant='secondary'
                    className='ml-2'
                  >
                    {currentStatusAction.prevStatusLabel}
                  </Button>
                )}
              </categoryStatusFetcher.Form>
            </div>

            <categoryCanInputFetcher.Form method='post' action={subCategoryActionPath}>
              <CategoryHeader
                reference={category?.child_category_reference}
                name={category?.child_category_name}
              />
            </categoryCanInputFetcher.Form>

            {combinedSchema?.properties.schema && (
              <formDataFetcher.Form
                method='post'
                action={subCategoryActionPath}
                className={cn('overflow-auto max-h-[100vh] p-4', !canInput && 'opacity-30')}
              >
                <JsonFormRenderer
                  schema={combinedSchema?.properties.schema}
                  uischema={combinedSchema?.properties.uischema}
                  onChange={({ data }: { data: JSONFormsData }) => setFormData(data)}
                  data={formData}
                />
              </formDataFetcher.Form>
            )}
          </div>

          <TabsMenu currentTabName={currentTabHandle.name} isSuperAdmin={isSuperAdmin}>
            <Outlet
              context={{
                account,
                childAccounts,
                members,
                category,
                subCategory,
                formDataRow,
              }}
            />
          </TabsMenu>
        </div>
      )}
    </div>
  );
};

export default DetailsSidePanel;

const CategoryHeader: React.FC<{
  name: string | null;
  reference: string | null;
}> = ({ name, reference }) => (
  <div className='category-header mt-12 px-4'>
    <h3 className='text-sm mb-0'>{reference}</h3>
    <h2 className='text-2xl mt-1'>{name}</h2>
  </div>
);

const TabsMenu: React.FC<{
  currentTabName: string;
  isSuperAdmin: boolean;
  children: React.ReactNode;
}> = ({ currentTabName, isSuperAdmin, children }) => (
  <Tabs
    value={currentTabName}
    orientation='vertical'
    className='flex w-1/3 min-w-80 bg-muted'
    activationMode='automatic'
  >
    <div className='overflow-auto max-h-[100vh] w-full'>{children}</div>
    <TabsList className='tabslist flex flex-col gap-2 justify-start'>
      <Link to='.' title='About'>
        <TabsTrigger value='about'>
          <InfoIcon />
        </TabsTrigger>
      </Link>
      <Link to='requirements'>
        <TabsTrigger value='requirements'>
          <ListTodoIcon />
        </TabsTrigger>
      </Link>
      <Link to='members'>
        <TabsTrigger value='members'>
          <UsersIcon />
        </TabsTrigger>
      </Link>
      {isSuperAdmin && (
        <Link to='settings'>
          <TabsTrigger value='settings'>
            <WrenchIcon />
          </TabsTrigger>
        </Link>
      )}
    </TabsList>
  </Tabs>
);
