'use client';

import { Row, ColumnDef, Table } from '@tanstack/react-table';
import { Checkbox } from '~/@/components/ui/checkbox';

// interface DataTableRowSelectProps {
// }

export default function getDataTableRowSelect<TData>(): ColumnDef<TData> {
  return {
    id: 'select',
    header: ({ table }: { table: Table<TData> }) => (
      <Checkbox
        checked={
          table.getIsAllPageRowsSelected() || (table.getIsSomePageRowsSelected() && 'indeterminate')
        }
        onCheckedChange={(value) => table.toggleAllPageRowsSelected(!!value)}
        aria-label='Select all'
        className='translate-y-[2px]'
      />
    ),
    cell: ({ row }: { row: Row<TData> }) => (
      <Checkbox
        checked={row.getIsSelected()}
        onCheckedChange={(value) => row.toggleSelected(!!value)}
        aria-label='Select row'
        className='translate-y-[2px]'
      />
    ),
    enableSorting: false,
    enableHiding: false,
  };
}
