import { Link, Outlet, useLoaderData, useNavigate, useParams } from '@remix-run/react';

import { FunctionGetViewCategoriesOverviewReturns } from '~/.server/services/categories';

// import { Avatar, AvatarFallback, AvatarImage } from '~/@/components/ui/avatar';
import { cn } from '~/@/lib/utils';
import { Button } from '~/@/components/ui/button';
import { Progress } from '~/@/components/ui/progress';
import { Badge } from '~/@/components/ui/badge';
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from '~/@/components/ui/table';
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from '~/@/components/ui/accordion';
// import { Search, ChevronDown, MoreHorizontal } from 'lucide-react';
import { MoreHorizontal } from 'lucide-react';
import { DisclosureUsers } from '~/components/categories/DisclosureUsers';
import { loader } from '~/.server/loaders/categorySlug';
import { getCurrentYear } from '~/utils/dates';

const CategoryOverview: React.FC = () => {
  const { account, parentCategories, categories } = useLoaderData<typeof loader>();
  const { midCategorySlug } = useParams();
  const currentSectionSlug = midCategorySlug ?? parentCategories?.[0]?.parent_category_slug ?? '';

  return (
    <div className='container mx-auto p-4'>
      <header className='flex justify-between items-center mb-6'>
        <div className='flex items-center space-x-4'>
          <div className='relative'>{account?.name}</div>
          {/*
          <div className='relative'>
            <Search className='absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400' />
            <input
              type='text'
              placeholder='Search'
              className='pl-10 pr-4 py-2 border rounded-md w-64'
            />
          </div>
          <div className='relative'>
            <select className='appearance-none bg-white border rounded-md px-4 py-2 pr-8'>
              <option>Country / Markets</option>
            </select>
            <ChevronDown className='absolute right-3 top-1/2 transform -translate-y-1/2 text-gray-400' />
          </div>
          <Avatar>
            <AvatarImage src='/images/user.jpg' alt='User' />
            <AvatarFallback>U</AvatarFallback>
          </Avatar>
          <ChevronDown className='text-gray-400' />
*/}
        </div>
        {/*
        <div className='relative'>
          <select className='appearance-none bg-white border rounded-md px-4 py-2 pr-8'>
            <option>Status</option>
          </select>
          <ChevronDown className='absolute right-3 top-1/2 transform -translate-y-1/2 text-gray-400' />
        </div>
        <Button variant='outline'>Add disclosure</Button>
        */}
      </header>

      <Accordion type='single' defaultValue={currentSectionSlug} collapsible className='w-full'>
        {parentCategories.map((category) => {
          const subCategories = categories.filter(
            (c) =>
              c.parent_category_id === category.parent_category_id && c.child_category_id !== null,
          );
          return (
            <OverviewSection
              key={category.parent_category_id}
              category={category}
              subCategories={subCategories}
            />
          );
        })}
      </Accordion>
      <Outlet />
    </div>
  );
};
export default CategoryOverview;

const OverviewSection: React.FC<{
  category: FunctionGetViewCategoriesOverviewReturns;
  subCategories: FunctionGetViewCategoriesOverviewReturns[];
}> = ({ category, subCategories }) => {
  const navigate = useNavigate();
  const { team } = useParams();
  const { categorySlug } = useLoaderData<typeof loader>();
  const path = `/${team}/overview/${getCurrentYear()}/${categorySlug}/${category.parent_category_slug}/${category.parent_category_slug}`;
  return (
    <AccordionItem value={category.parent_category_slug!} className='mb-8'>
      <AccordionTrigger
        className={cn(
          'bg-gray-100 p-4 rounded-md flex justify-between items-center mb-4',
          category.parent_category_can_input === false && 'opacity-50',
        )}
      >
        <h2 className='text-lg font-semibold'>
          {category.parent_category_reference ? (
            <span className='mr-2 text-slate-400'>{category.parent_category_reference}</span>
          ) : null}
          {category.parent_category_name}
          <Button
            className='ml-2 p-1 rounded-full h-auto bg-gray-400 hover:bg-gray-300'
            onClick={(e) => {
              e.stopPropagation();
              navigate(path);
            }}
          >
            <MoreHorizontal className='text-gray-100' size={14} />
          </Button>
        </h2>
        <Progress value={(category.parent_category_progress ?? 0) * 100} className='w-28' />
      </AccordionTrigger>
      <AccordionContent>
        <Table className='w-full'>
          <TableHeader>
            <TableRow className='text-left text-gray-500'>
              <TableHead className='pb-2 w-5/16'>Disclosure</TableHead>
              <TableHead className='pb-2 w-1/6'>Data source</TableHead>
              <TableHead className='pb-2 w-1/20'>Owner</TableHead>
              <TableHead className='pb-2 w-1/6'>Task force</TableHead>
              <TableHead className='pb-2 w-1/6'>Status</TableHead>
              <TableHead className='pb-2 w-1/6'>Progress</TableHead>
              <TableHead className='pb-2 w-1/24'></TableHead>
            </TableRow>
          </TableHeader>
          <TableBody>
            {subCategories?.map((subCategory) => (
              <DisclosureRow key={subCategory.child_category_id} category={subCategory} />
            ))}
          </TableBody>
        </Table>
      </AccordionContent>
    </AccordionItem>
  );
};

function getStatusColor(categoryStatus: CategoryStatus): string {
  const statusColors: Record<CategoryStatus, string> = {
    'not-started': 'bg-gray-400',
    'in-progress': 'bg-blue-400',
    'in-review': 'bg-yellow-400',
    'in-parent-review': 'bg-orange-400',
    completed: 'bg-green-400',
  };
  return statusColors[categoryStatus];
}

const DisclosureRow: React.FC<{
  category: FunctionGetViewCategoriesOverviewReturns;
}> = ({ category }) => {
  const navigate = useNavigate();
  const { team } = useParams();
  const { categorySlug } = useLoaderData<typeof loader>();
  const path = `/${team}/overview/${getCurrentYear()}/${categorySlug}/${category.parent_category_slug}/${category.child_category_slug}`;
  return (
    <TableRow
      className={cn(
        'border-t cursor-pointer hover:bg-gray-50',
        (category.parent_category_can_input === false ||
          category.child_category_can_input === false) &&
          'opacity-40',
      )}
      onClick={(e) => {
        e.stopPropagation();
        navigate(path);
      }}
    >
      <TableCell className='py-4'>
        <Link to={path}>
          {category.child_category_reference ? (
            <span className='mr-2 text-slate-500'>{category.child_category_reference}</span>
          ) : null}
          {category.child_category_name}
        </Link>
      </TableCell>
      <TableCell className='py-4'>
        <span>API</span>
      </TableCell>
      <TableCell className='py-4'>
        <DisclosureUsers category={category} role='owner' />
      </TableCell>
      <TableCell className='py-4'>
        <DisclosureUsers category={category} role='member' />
      </TableCell>
      <TableCell className='py-4'>
        <DisclosureUsers category={category} role='reviewer' />
      </TableCell>
      <TableCell className='py-4'>
        {category.child_category_status && (
          <>
            <Badge
              className={cn(
                'w-3 h-3 rounded-full p-0 mr-2',
                getStatusColor(category.child_category_status),
              )}
            />
            {category.child_category_status?.replace(/-/g, ' ')}
          </>
        )}
      </TableCell>
      <TableCell className='py-4'>
        <Progress value={(category.child_category_progress ?? 0) * 100} className='w-full' />
      </TableCell>
      <TableCell className='py-4'>
        <MoreHorizontal className='text-gray-400' />
      </TableCell>
    </TableRow>
  );
};
