import { MetaFunction } from '@remix-run/react';
import { buildMeta } from '~/utils/meta';
import { loader } from '~/.server/loaders/formDataCategorySubmission';

export const meta: MetaFunction<typeof loader> = (args) =>
  buildMeta({
    args,
    title:
      args.data?.category.child_category_reference ??
      args.data?.category.child_category_name ??
      'Disclosure',
  });
