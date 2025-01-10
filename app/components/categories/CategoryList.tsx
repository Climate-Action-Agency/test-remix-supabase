import React from 'react';
import { Link } from '@remix-run/react';
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from '~/@/components/ui/table';
import { Heading } from '~/@/components/ui/heading';
import { CircleDashed } from 'lucide-react';

interface CategoryListProps {
  name?: string;
  categories: Partial<Category>[] | null;
  navigateDown?: boolean;
}

const CategoryList: React.FC<CategoryListProps> = ({ name, categories, navigateDown }) => (
  <>
    {name && <Heading level='h1'>{name}</Heading>}
    {(categories?.length ?? 0) > 0 && (
      <Table className='cursor-pointer'>
        <TableHeader>
          <TableRow>
            <TableHead>Subcategory</TableHead>
            <TableHead>Status</TableHead>
          </TableRow>
        </TableHeader>
        <TableBody>
          {categories?.map((category) => (
            <TableRow key={category.id}>
              <TableCell>
                <Link
                  relative='path'
                  to={`${navigateDown ? '.' : '..'}/${category.slug}`}
                  className='block highlight-hover'
                >
                  {category.name}
                </Link>
              </TableCell>
              <TableCell>
                <Link
                  relative='path'
                  to={`${navigateDown ? '.' : '..'}/${category.slug}`}
                  className='block'
                >
                  {category.slug === 'other-purchases' ? (
                    <CircleDashed color='gold' />
                  ) : (
                    <CircleDashed color='red' />
                  )}
                </Link>
              </TableCell>
            </TableRow>
          ))}
        </TableBody>
      </Table>
    )}
  </>
);
export default CategoryList;
