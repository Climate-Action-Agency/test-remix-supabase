'use client';

import { useState } from 'react';
import { useNavigate, useLocation } from '@remix-run/react';
import {
  Column,
  ColumnDef,
  ColumnFiltersState,
  flexRender,
  getCoreRowModel,
  getFacetedRowModel,
  getFacetedUniqueValues,
  getFilteredRowModel,
  getPaginationRowModel,
  getSortedRowModel,
  OnChangeFn,
  PaginationState,
  SortingState,
  Updater,
  useReactTable,
  VisibilityState,
} from '@tanstack/react-table';

import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from '~/@/components/ui/table';
import { DEFAULT_PAGE_SIZE } from '~/config/config';

import DataTableColumnHeader from './DataTableColumnHeader';
import DataTableCell from './DataTableCell';
import DataTableToolbar from './DataTableToolbar';
import DataTablePagination from './DataTablePagination';
// import DataTableRowActions from './DataTableRowActions';
import getDataTableRowActionButtons from './DataTableRowActionButtons';
import getDataTableRowSelect from './DataTableRowSelect';

export interface DataTableHeader extends InputField {
  align?: 'left' | 'right' | 'center';
  className?: string;
  sortable?: boolean;
  statusField?: string;
  displayOnMobile?: boolean;
  defaultSortOrder?: 'asc' | 'desc';
  isHorizontalHeader?: boolean;
  inputField?: InputField;
}

// Bridge between internal Platform 'headers' and @tanstack/react-table 'columns'
export function getHeaderForColumn<TData>(
  headers: readonly DataTableHeader[],
  column: Column<TData>,
): DataTableHeader | undefined {
  return headers.find((h) => h.name === column.id);
}

interface DataTableProps<TData> {
  headers: readonly DataTableHeader[];
  // columns: ColumnDef<TData, TValue>[];
  data: TData[];
  rowCount?: number | null;
  rowStatuses?: NameAndId[];
  rowKeyField?: string;
  detailPageLink?: string;
  listSources?: ListSources;
  showToolbar?: boolean;
  showPagination?: boolean;
  onChange?: (id: number, fieldName: string, value: NameAndId | null) => void;
  onDelete?: (id: number) => void;
}

export default function DataTable<TData>({
  headers,
  data,
  rowCount,
  rowKeyField,
  // rowStatuses,
  // detailPageLink,
  listSources,
  showToolbar = true,
  showPagination = true,
  onChange,
  onDelete,
}: DataTableProps<TData & WithId>) {
  const navigate = useNavigate();
  const location = useLocation();
  const searchParams = new URLSearchParams(location.search);

  // Sorting
  const [sorting, setSorting] = useState<SortingState>([]);
  const handleSortingChange: OnChangeFn<SortingState> = (updaterOrValue: Updater<SortingState>) => {
    const [newSorting] =
      typeof updaterOrValue === 'function' ? updaterOrValue(sorting) : updaterOrValue;
    setSorting(updaterOrValue);
    searchParams.set('sort', newSorting.id);
    searchParams.set('order', newSorting.desc ? 'desc' : 'asc');
    navigate(`${location.pathname}?${searchParams.toString()}`);
  };

  // Pagination
  const [pagination, setPagination] = useState<PaginationState>({
    pageIndex: parseInt(searchParams.get('page') ?? '1') - 1,
    pageSize: DEFAULT_PAGE_SIZE,
  });
  const handlePaginationChange: OnChangeFn<PaginationState> = (
    updaterOrValue: Updater<PaginationState>,
  ) => {
    const newPagination =
      typeof updaterOrValue === 'function' ? updaterOrValue(pagination) : updaterOrValue;
    setPagination(updaterOrValue);
    searchParams.set('page', (newPagination.pageIndex + 1).toString());
    // searchParams.set('pagesize', newPagination.pageSize.toString());
    navigate(`${location.pathname}?${searchParams.toString()}`);
  };

  // Filters
  const [columnFilters, setColumnFilters] = useState<ColumnFiltersState>([]);

  // Select rows
  const [rowSelection, setRowSelection] = useState({});

  // Hide/show columns
  const [columnVisibility, setColumnVisibility] = useState<VisibilityState>({});

  const columns: ColumnDef<TData>[] = [
    // Selection checkboxes
    getDataTableRowSelect<TData>(),

    // Main data columns
    ...headers.map(
      (h): ColumnDef<TData> => ({
        accessorKey: h.name,
        header: ({ column }: { column: Column<TData> }) => {
          return <DataTableColumnHeader column={column} title={h.friendlyName!} />;
        },
        cell: (cellContext) => {
          const header = getHeaderForColumn(headers, cellContext.column);
          return (
            <DataTableCell<TData>
              cellContext={cellContext}
              header={header}
              listSources={listSources}
              onChange={onChange}
            />
          );
        },
      }),
    ),

    // Action menu/buttons
    // {
    //   id: 'action-menu',
    //   cell: ({ row }: { row: Row<TData> }) => <DataTableRowActions row={row} />,
    // },
    ...getDataTableRowActionButtons<TData>({ rowKeyField, onDelete }),
  ];

  const table = useReactTable({
    data,
    columns,
    state: {
      sorting,
      pagination,
      columnVisibility,
      rowSelection,
      columnFilters,
    },
    manualPagination: true,
    rowCount: rowCount ?? undefined,
    enableRowSelection: true,
    getCoreRowModel: getCoreRowModel(),
    getSortedRowModel: getSortedRowModel(),
    onSortingChange: handleSortingChange,
    onRowSelectionChange: setRowSelection,
    onColumnFiltersChange: setColumnFilters,
    onColumnVisibilityChange: setColumnVisibility,
    getFilteredRowModel: getFilteredRowModel(),
    getPaginationRowModel: getPaginationRowModel(),
    onPaginationChange: handlePaginationChange,
    getFacetedRowModel: getFacetedRowModel(),
    getFacetedUniqueValues: getFacetedUniqueValues(),
  });

  return (
    <div className='space-y-4'>
      {showToolbar && <DataTableToolbar table={table} headers={headers} />}
      <div className='rounded-md border'>
        <Table>
          <TableHeader>
            {table.getHeaderGroups().map((headerGroup) => (
              <TableRow key={headerGroup.id}>
                {headerGroup.headers.map((header) => {
                  return (
                    <TableHead key={header.id}>
                      {header.isPlaceholder
                        ? null
                        : flexRender(header.column.columnDef.header, header.getContext())}
                    </TableHead>
                  );
                })}
              </TableRow>
            ))}
          </TableHeader>
          <TableBody>
            {table.getRowModel().rows?.length ? (
              table.getRowModel().rows.map((row) => (
                <TableRow key={row.id} data-state={row.getIsSelected() && 'selected'}>
                  {row.getVisibleCells().map((cell) => (
                    <TableCell key={cell.id}>
                      {flexRender(cell.column.columnDef.cell, cell.getContext())}
                    </TableCell>
                  ))}
                </TableRow>
              ))
            ) : (
              <TableRow>
                <TableCell colSpan={columns.length} className='h-24 text-center'>
                  No results.
                </TableCell>
              </TableRow>
            )}
          </TableBody>
        </Table>
      </div>
      {showPagination && <DataTablePagination table={table} />}
    </div>
  );
}
