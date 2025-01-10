import { ActionFunctionArgs } from '@remix-run/node';
import { PostgrestError } from '@supabase/supabase-js';
import { requireUserSession } from '~/session';
import { ZodIssue, z } from 'zod';
import { blockedSlugs } from '~/utils/blockedSlugs';
import { createAccount, FunctionCreateAccountReturns } from '~/.server/services/accounts';

const FormSchema = z.object({
  slug: z
    .string()
    .min(2, {
      message: 'Account slug must be at least 2 characters.',
    })
    .refine((s) => !blockedSlugs.includes(s), {
      message: 'An account with that unique ID already exists.',
    }),
  name: z.string().min(2, {
    message: 'Account name must be at least 2 characters.',
  }),
});

export async function action({ request }: ActionFunctionArgs): Promise<{
  data?: FunctionCreateAccountReturns | null;
  errors: (PostgrestError | null)[] | ZodIssue[];
}> {
  const { supabaseClient } = await requireUserSession({ request });
  const formData = await request.formData();
  const name = formData.get('name') as string;
  const slug = formData.get('slug') as string;
  const parent_account_id = formData.get('parent_account_id') as string;

  const parsed = FormSchema.safeParse({
    slug,
    name,
    parent_account_id,
  });

  if (parsed.success) {
    try {
      const data = await createAccount({
        supabaseClient,
        parentAccountId: parent_account_id,
        name,
        slug,
      });
      return { data, errors: [] };
    } catch (error) {
      return { errors: [error] };
    }
  } else {
    return { errors: parsed.error.errors };
  }
}
