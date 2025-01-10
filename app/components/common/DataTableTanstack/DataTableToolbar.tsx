'use client';

import { X, HelpCircle } from 'lucide-react';
import { Table } from '@tanstack/react-table';

import { Button } from '~/@/components/ui/button';
import { Input } from '~/@/components/ui/input';

import DataTableViewOptions from './DataTableViewOptions';
import DataTableFacetedFilter from './DataTableFacetedFilter';
import { DataTableHeader } from './DataTable';

const statuses = [
  {
    value: 'backlog',
    label: 'Backlog',
    icon: HelpCircle,
  },
];

interface DataTableToolbarProps<TData> {
  table: Table<TData>;
  headers: readonly DataTableHeader[];
}

export default function DataTableToolbar<TData>({ table, headers }: DataTableToolbarProps<TData>) {
  const isFiltered = table.getState().columnFilters.length > 0;

  return (
    <div className='flex items-center justify-between'>
      <div className='filters flex flex-1 items-center space-x-2'>
        <Input
          placeholder='Filter tasks...'
          value={(table.getColumn('name')?.getFilterValue() as string) ?? ''}
          onChange={(event) => table.getColumn('name')?.setFilterValue(event.target.value)}
          className='h-8 w-[150px] lg:w-[250px]'
        />
        {table.getColumn('name') && (
          <DataTableFacetedFilter
            column={table.getColumn('name')}
            title='Name'
            options={statuses}
          />
        )}
        {isFiltered && (
          <Button
            variant='ghost'
            onClick={() => table.resetColumnFilters()}
            className='h-8 px-2 lg:px-3'
          >
            Reset
            <X className='ml-2 h-4 w-4' />
          </Button>
        )}
      </div>
      <DataTableViewOptions table={table} headers={headers} />
    </div>
  );
}
