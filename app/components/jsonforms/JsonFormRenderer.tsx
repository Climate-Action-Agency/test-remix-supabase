import { isStringControl, rankWith, scopeEndsWith } from '@jsonforms/core';
import {
  JsonForms,
  withJsonFormsControlProps,
  // withJsonFormsCellProps,
  JsonFormsInitStateProps,
  JsonFormsReactProps,
} from '@jsonforms/react';
import {
  vanillaRenderers as defaultRenderers,
  // vanillaCells as defaultCells,
  vanillaStyles as defaultStyles,
  JsonFormsStyleContext,
} from '@jsonforms/vanilla-renderers';
import {
  // materialRenderers as defaultRenderers,
  materialCells as defaultCells,
} from '@jsonforms/material-renderers';
// const defaultStyles = [];

// import TableControl from './TableControl';
// import InputControl from './InputControl';
// import InputCell from './InputCell';
import TextAreaControl from './TextAreaControl';
import CheckboxControl from './CheckboxControl';

// Register the custom renderers for JsonForms
// Testers: see `testers.d.ts` in jsonforms
const renderers = [
  {
    tester: rankWith(3, scopeEndsWith('requirements')),
    renderer: withJsonFormsControlProps(CheckboxControl),
  },
  { tester: rankWith(3, isStringControl), renderer: withJsonFormsControlProps(TextAreaControl) },
  ...defaultRenderers,
];

const cells = [
  // { tester: rankWith(3, isStringControl), renderer: withJsonFormsCellProps(InputCell) },
  ...defaultCells,
];

const styleContextValue = {
  styles: [
    ...defaultStyles,
    {
      name: 'horizontal.layout',
      classNames: ['flex flex-row space-x-4'],
    },
    {
      name: 'array.button',
      classNames: ['bg-red-500'],
    },
    {
      name: 'control.input',
      classNames: ['border border-gray-300 rounded-md p-2 text-sm'],
    },
  ],
};

type JsonFormRendererProps = Omit<
  JsonFormsInitStateProps & JsonFormsReactProps,
  'renderers' | 'data'
> & {
  data: JSONFormsData;
};

// Main form renderer using JsonForms with ShadCN components
const JsonFormRenderer = ({ schema, uischema, data, onChange }: JsonFormRendererProps) => (
  <div className='json-forms'>
    <JsonFormsStyleContext.Provider value={styleContextValue}>
      <JsonForms
        schema={schema}
        uischema={uischema}
        data={data}
        renderers={renderers}
        cells={cells}
        onChange={onChange}
      />
    </JsonFormsStyleContext.Provider>
  </div>
);

export { JsonFormRenderer };
