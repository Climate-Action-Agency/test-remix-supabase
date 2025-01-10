import React from 'react';
import { ControlProps } from '@jsonforms/core';

const HorisontalLayout: React.FC<ControlProps> = ({ data, label }) => {
  console.log('HorizontalLayout', data, label);
  return <div className='mb-4'>HorizontalLayout</div>;
};
export default HorisontalLayout;
