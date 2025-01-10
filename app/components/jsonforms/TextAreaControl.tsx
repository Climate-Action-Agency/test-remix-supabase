import React from 'react';
import { ControlProps } from '@jsonforms/core';
import { Label } from '~/@/components/ui/label';
import { Textarea } from '~/@/components/ui/textarea';

// Custom input renderer for strings
const TextAreaControl: React.FC<ControlProps> = ({ data, handleChange, path, label, required }) => {
  return (
    <div className='mb-4'>
      <Label htmlFor={path}>
        {label}
        {required ? ' *' : ''}
      </Label>
      <Textarea
        id={path}
        value={typeof data === 'string' ? data : ''}
        onChange={(e) => handleChange(path, e.target.value)}
        required={required}
        className='shadcn-textarea'
        rows={6}
      />
    </div>
  );
};
export default TextAreaControl;
