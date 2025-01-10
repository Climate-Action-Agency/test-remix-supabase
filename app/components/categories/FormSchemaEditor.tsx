import { useOutletContext } from '@remix-run/react';
import { Button } from '~/@/components/ui/button';
import { Textarea } from '~/@/components/ui/textarea';
import { useFetcherWithToast } from '~/hooks/useFetcherWithToast';
import { SubCategoryLoaderData } from '~/.server/loaders/formDataCategorySubmission';

export default function Schema() {
  const context = useOutletContext<SubCategoryLoaderData>();
  const { subCategory } = context;
  const combinedSchemas = subCategory.form_schema;
  const requirementsSchema = subCategory.requirements_form_schema;
  const fetcher = useFetcherWithToast({ successTitle: 'Saved form schema' });

  return (
    <fetcher.Form method='post' className='overflow-auto min-h-[100vh] px-4'>
      <div className='space-y-1'>
        <h2>About &amp; Objectives</h2>
        <Textarea
          name='description'
          placeholder={`Markdown formatting:

### About
This disclosure...

### Objective
The objective of...`}
          defaultValue={subCategory.description}
          rows={4}
        ></Textarea>
      </div>

      <div className='space-y-1'>
        <h2>Submission form</h2>
        <Textarea
          name='form_schema'
          placeholder='JSON Forms schema for left-side inputs'
          defaultValue={JSON.stringify(combinedSchemas, null, 2).replace(/^null$/, '')}
          rows={10}
        ></Textarea>
        <Button
          type='button'
          variant='secondary'
          onClick={() => {
            void navigator.clipboard.writeText(JSON.stringify(combinedSchemas));
            window.alert('Copied to clipboard');
          }}
        >
          Copy
        </Button>
      </div>

      <div className='space-y-1'>
        <h2>Requirements form</h2>
        <Textarea
          name='requirements_form_schema'
          placeholder='JSON Forms schema for requirements checklist'
          defaultValue={JSON.stringify(requirementsSchema, null, 2).replace(/^null$/, '')}
          rows={10}
        ></Textarea>
        <Button
          type='button'
          variant='secondary'
          onClick={() => {
            void navigator.clipboard.writeText(JSON.stringify(requirementsSchema));
            window.alert('Copied to clipboard');
          }}
        >
          Copy
        </Button>
      </div>

      <input type='hidden' name='id' value={subCategory.id.toString()} />

      <div className='mt-4 space-y-1'>
        <Button type='submit' className='w-32'>
          Save
        </Button>
      </div>
    </fetcher.Form>
  );
}

export const handle: TabHandle = {
  name: 'settings',
};
