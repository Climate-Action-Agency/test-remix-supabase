import React from 'react';
import { ControlProps } from '@jsonforms/core';
import { Label } from '~/@/components/ui/label';
import { Checkbox } from '~/@/components/ui/checkbox';

// Custom input renderer for strings
const CheckboxControl: React.FC<ControlProps> = ({ schema, data, handleChange, path }) => {
  return (
    <div className='mb-4 flex items-start flex-col justify-bottom'>
      {schema?.properties !== undefined
        ? Object.keys(schema?.properties).map((key) => (
            <div key={key} className='flex mb-3 items-center'>
              <Checkbox
                id={key}
                defaultChecked={(data as JSONFormsData)?.[key]}
                className='shadcn-chec1kbox'
                onCheckedChange={(value) => handleChange(`${path}.${key}`, value)}
              />
              <Label htmlFor={path} className='ml-2 leading-1 font-normal text-slate-600'>
                {schema?.properties?.[key].title}
              </Label>
            </div>
          ))
        : null}
    </div>
  );
};
export default CheckboxControl;
