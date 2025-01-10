'use client';

import { Row, ColumnDef } from '@tanstack/react-table';
import { Button } from '~/@/components/ui/button';

interface DataTableRowActionButtonsProps {
  rowKeyField?: string;
  onDelete?: (id: string) => void;
}

export default function getDataTableRowActionButtons<TData>({
  rowKeyField,
  onDelete,
}: DataTableRowActionButtonsProps): ColumnDef<TData>[] {
  return onDelete !== undefined
    ? [
        {
          id: 'action-button',
          cell: ({ row }: { row: Row<TData> }) => (
            <Button
              onClick={() => {
                const rowId = row.getValue(rowKeyField!);
                if (window.confirm(`Are you sure you want to delete “${rowId as string}”?`)) {
                  onDelete(rowId as string);
                }
              }}
              variant='destructive'
            >
              Delete
            </Button>
          ),
        },
      ]
    : [];
}
