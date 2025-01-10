import React from 'react';
import { ControlProps } from '@jsonforms/core';
import { Label } from '~/@/components/ui/label';
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from '~/@/components/ui/table';

type TableRow = Record<string, string>;
type TableData = TableRow[];

type TableControlProps = Omit<ControlProps, 'data'> & { data: TableData };

// Custom input renderer for strings
const TableControl: React.FC<TableControlProps> = ({ data, label }) => {
  console.log('TableControl', data, label);
  return (
    <div className='mb-4'>
      <Label>{label}</Label>
      <Table className='shadcn-table'>
        <TableHeader>
          <TableRow>
            {Object.keys(data[0] || {}).map((header, index) => (
              <TableHead key={index}>{header}</TableHead>
            ))}
          </TableRow>
        </TableHeader>
        <TableBody>
          {data.map((row, rowIndex) => (
            <TableRow key={rowIndex}>
              {Object.values(row).map((cell, cellIndex) => (
                <TableCell key={cellIndex}>{cell}</TableCell>
              ))}
            </TableRow>
          ))}
        </TableBody>
      </Table>
    </div>
  );
};
export default TableControl;
