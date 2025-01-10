import Markdown from 'react-markdown';
import { useOutletContext } from '@remix-run/react';
import { SubCategoryLoaderData } from '~/.server/loaders/formDataCategorySubmission';

export default function DataFormCategorySubmission() {
  const context = useOutletContext<SubCategoryLoaderData>();
  const { subCategory } = context;

  if (subCategory.description === null) {
    return (
      <div className='p-4 text-muted-foreground'>
        “About &amp; Objectives” not found, check Settings tab.
      </div>
    );
  }

  return (
    <div className='px-4 text-sm'>
      <Markdown>{subCategory.description}</Markdown>
    </div>
  );
}

export const handle: TabHandle = {
  name: 'about',
};
