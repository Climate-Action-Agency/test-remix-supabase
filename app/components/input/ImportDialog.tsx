import { useState, useMemo } from 'react';
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from '~/@/components/ui/dialog';
import { Button } from '~/@/components/ui/button';
import { Input } from '~/@/components/ui/input';
import { Heading } from '~/@/components/ui/heading';
import SmartInput from '~/components/input/SmartInput';

import { parseTSVtoJSON } from '~/utils/csvParser';
import { useFetcherWithToast } from '~/hooks/useFetcherWithToast';

export const IMPORT_FILE_FIELD_ID = {
  MULTIPLE: 'import_json',
  ONE_BY_ONE: 'import_json_onebyone',
};

interface ImportDialogProps {
  tableNameUserFriendly: string;
  inputFields: InputField[];
  listSources?: ListSources;
  importOneByOne?: boolean;
}

export default function ImportDialog({
  tableNameUserFriendly,
  inputFields,
  importOneByOne = false,
}: ImportDialogProps) {
  const fetcher = useFetcherWithToast({ successTitle: `Added data to ${tableNameUserFriendly}` });
  const [textareaValue, setTextareaValue] = useState('');

  const handleFileChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    const file = event.target.files?.[0];
    if (!file) return;
    const reader = new FileReader();
    reader.onload = (e) => {
      const text = e.target?.result;
      setTextareaValue(text as string);
    };
    reader.readAsText(file);
  };

  const jsonToImport = useMemo(
    () => JSON.stringify(parseTSVtoJSON(textareaValue, { slugifyHeaders: true })),
    [textareaValue],
  );

  const inputFieldNames = [...inputFields.map((f) => f.name)].join('\t');
  const inputFieldExamples = [
    ...inputFields.map((f) => (f.type === 'number' ? 12.3 : 'blabla')),
  ].join('\t');

  return (
    <Dialog>
      <div className='p-1'>
        <DialogTrigger asChild>
          <Button>Import data…</Button>
        </DialogTrigger>
      </div>

      <DialogContent>
        <DialogHeader>
          <DialogTitle>Import data</DialogTitle>
          <DialogDescription>
            Import data from Excel, Google Sheets, or a CSV file.
          </DialogDescription>
        </DialogHeader>

        <fetcher.Form method='post'>
          <textarea
            className='p-2 text-sm w-full h-40 border'
            placeholder={`Paste data (with headers) from Excel or Google Sheets e.g:\n\n${inputFieldNames}\n${inputFieldExamples}`}
            value={textareaValue}
            onChange={(e) => setTextareaValue(e.target.value)}
          />

          <Input
            type='hidden'
            name={importOneByOne ? IMPORT_FILE_FIELD_ID.ONE_BY_ONE : IMPORT_FILE_FIELD_ID.MULTIPLE}
            value={jsonToImport}
          />

          <div className='p-4'>
            <input type='file' accept='.csv, .tsv' onChange={handleFileChange} />
          </div>

          <DialogTrigger asChild>
            <Button type='submit'>Import data into {tableNameUserFriendly}</Button>
          </DialogTrigger>
        </fetcher.Form>
      </DialogContent>
    </Dialog>
  );
}

export function AddDataForm({
  tableNameUserFriendly,
  inputFields,
  listSources,
}: ImportDialogProps) {
  const fetcher = useFetcherWithToast({ successTitle: `Added data to ${tableNameUserFriendly}` });
  return (
    <>
      <Heading level='h3'>Add {tableNameUserFriendly}</Heading>
      <fetcher.Form method='post'>
        <div className='flex'>
          {inputFields?.map((inputField, index) => (
            <SmartInput
              key={index}
              inputField={inputField}
              listSources={listSources}
              required={inputField.required ?? false}
            />
          ))}
          <Button type='submit'>Add data</Button>
        </div>
      </fetcher.Form>
    </>
  );
}
