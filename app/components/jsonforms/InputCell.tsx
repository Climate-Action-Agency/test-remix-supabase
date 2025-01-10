import React from 'react';
import { CellProps } from '@jsonforms/core';
import { Input } from '~/@/components/ui/input';

// Custom input renderer for strings
const InputControl: React.FC<CellProps> = ({ data, handleChange, path }) => {
  return (
    <Input
      id={path}
      value={typeof data === 'string' ? data : ''}
      onChange={(e) => handleChange(path, e.target.value)}
      className='shadcn-input'
    />
  );
};
export default InputControl;
