import { useOutletContext } from '@remix-run/react';
import { SubCategoryLoaderData } from '~/.server/loaders/formDataCategorySubmission';
import { useFetcherWithToast } from '~/hooks/useFetcherWithToast';
import { JsonFormRenderer } from '../jsonforms/JsonFormRenderer';
import { useState } from 'react';
import useDebounce from '~/hooks/useDebounce';

export default function Requirements() {
  const context = useOutletContext<SubCategoryLoaderData>();
  const { subCategory, formDataRow } = context;
  const fetcher = useFetcherWithToast({ successTitle: 'Saved the form data' });
  const [formData, setFormData] = useState<JSONFormsData>(formDataRow?.requirements as string);
  const combinedSchema = subCategory.requirements_form_schema as unknown as JSONFormsCombinedSchema;

  if (combinedSchema === null) {
    return (
      <div className='p-4 text-muted-foreground'>
        “Requirements form” not found, check Settings tab.
      </div>
    );
  }

  useDebounce(formData, 1000, (value) => {
    if (value !== formDataRow?.requirements) {
      const data = new FormData();
      data.append('formDataJson', JSON.stringify(formData));
      data.append('category_id', subCategory.id);
      fetcher.submit(data, { method: 'POST' });
    }
  });

  return (
    <fetcher.Form method='post' className='overflow-auto max-h-[100vh] p-4 text-sm'>
      <JsonFormRenderer
        schema={combinedSchema?.properties.schema}
        uischema={combinedSchema?.properties.uischema}
        onChange={({ data }: { data: JSONFormsData }) => setFormData(data)}
        data={formData}
      />
    </fetcher.Form>
  );
}

export const handle: TabHandle = {
  name: 'requirements',
};
