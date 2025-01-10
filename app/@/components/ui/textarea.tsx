import * as React from 'react';

import { cn } from 'app/@/lib/utils';

export type TextareaProps = React.TextareaHTMLAttributes<HTMLTextAreaElement>;

const textAreaClasses =
  'flex min-h-[80px] w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50';

const Textarea = React.forwardRef<HTMLTextAreaElement, TextareaProps>(
  ({ className, ...props }, ref) => {
    return <textarea className={cn(textAreaClasses, className)} ref={ref} {...props} />;
  },
);
Textarea.displayName = 'Textarea';

const FakeTextarea: React.FC<TextareaProps> = ({ className, children }) => (
  <div className={cn(textAreaClasses, 'flex h-96 items-center', className)}>{children}</div>
);

export { Textarea, FakeTextarea };
