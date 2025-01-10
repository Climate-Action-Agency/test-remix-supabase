import React from 'react';
import { ControlProps } from '@jsonforms/core';
import { Label } from '~/@/components/ui/label';
import { Input } from '~/@/components/ui/input';

// Custom input renderer for strings
const InputControl: React.FC<ControlProps> = ({ data, handleChange, path, label, required }) => {
  return (
    <div className='mb-4'>
      <Label htmlFor={path}>
        {label}
        {required ? ' *' : ''}
      </Label>
      <Input
        id={path}
        value={typeof data === 'string' ? data : ''}
        onChange={(e) => handleChange(path, e.target.value)}
        required={required}
        className='shadcn-input'
      />
    </div>
  );
};
export default InputControl;
