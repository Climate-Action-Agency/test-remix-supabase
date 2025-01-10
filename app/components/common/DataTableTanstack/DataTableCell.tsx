'use client';

import { CellContext } from '@tanstack/react-table';
import { Badge } from '~/@/components/ui/badge';
import SmartInput from '~/components/input/SmartInput';
import { DataTableHeader } from './DataTable';
import { isUndefinedOrNull } from '~/utils/objects';

interface DataTableCellProps<TData> {
  cellContext: CellContext<TData, unknown>;
  header?: DataTableHeader;
  listSources?: ListSources;
  onChange?: (id: number, fieldName: string, value: NameAndId | null) => void;
}

export default function DataTableCell<TData>({
  cellContext,
  header,
  listSources,
  onChange,
}: DataTableCellProps<TData & WithId>): React.ReactElement {
  return header?.inputField !== undefined ? (
    <SmartInput
      key={cellContext.cell.id}
      inputField={header?.inputField}
      listSources={listSources}
      defaultValue={
        !isUndefinedOrNull(cellContext.getValue())
          ? { id: parseInt(cellContext.getValue() as string), name: '-' }
          : undefined
      }
      defaultTextValue={(cellContext.getValue() as string) ?? ''}
      required={true}
      onChange={(newValue: NameAndId | null) => {
        onChange?.(cellContext.row.original.id, cellContext.column.id, newValue);
      }}
    />
  ) : header?.type === 'status' && !isUndefinedOrNull(cellContext.getValue()) ? (
    <Badge>{cellContext.getValue() as string}</Badge>
  ) : header?.type === 'link' ? (
    <a href={cellContext.getValue() as string} target='_blank' rel='noreferrer noopener'>
      (link)
    </a>
  ) : (
    <>{cellContext.getValue()}</>
  );
}
