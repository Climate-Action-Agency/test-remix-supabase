import { ActionFunctionArgs } from '@remix-run/node';

import { requireUserSession } from '~/session';

export async function action({ request }: ActionFunctionArgs) {
  const { supabaseClient } = await requireUserSession({ request });
  const formData = await request.formData();
  const description =
    formData.get('description') === '' ? null : (formData.get('description') as string);
  const formSchemaStr = formData.get('form_schema') as string;
  const requirementsSchemaStr = formData.get('requirements_form_schema') as string;
  const formSchema = formSchemaStr === '' ? null : (JSON.parse(formSchemaStr) as JSON);
  const requirementsSchema =
    requirementsSchemaStr === '' ? null : (JSON.parse(requirementsSchemaStr) as JSON);
  try {
    await supabaseClient
      .from('category')
      .update({
        description,
        form_schema: formSchema,
        requirements_form_schema: requirementsSchema,
      })
      .eq('id', formData.get('id') as string);
    return null;
  } catch (error) {
    return { error };
  }
}
