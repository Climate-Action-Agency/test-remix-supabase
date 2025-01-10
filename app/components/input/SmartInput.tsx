import React, { useState } from 'react';

import { Input } from '~/@/components/ui/input';
import SearchDropdown from '~/components/input/SearchDropdown';
import useDebounce from '~/hooks/useDebounce';

interface SmartInputProps {
  inputField?: InputField;
  listSources?: ListSources;
  defaultValue?: NameAndId;
  defaultTextValue?: string;
  required?: boolean;
  onChange?: (newValue: NameAndId | null) => void;
  tagAsMetadata?: boolean;
}

/** “Smart” = different input based on inputField?.type */
function SmartInput({
  inputField,
  listSources,
  defaultValue,
  defaultTextValue,
  onChange,
  required = false,
  tagAsMetadata = false,
}: SmartInputProps) {
  const [listValue, setListValue] = useState<NameAndId | undefined>(defaultValue);

  const [textInput, setTextInput] = useState<string | undefined>(defaultTextValue);
  useDebounce(textInput, 500, (value) => {
    if (value !== defaultTextValue) {
      onChange?.({ id: 0, name: value as string });
    }
  });

  const handleDropdownChange = (newValue: NameAndId) => {
    setListValue(newValue);
    onChange?.(newValue);
  };

  if (inputField?.type === 'list') {
    return (
      <>
        <SearchDropdown
          options={listSources?.[inputField?.listSource ?? 'emissionFactors'] ?? null}
          value={listValue?.id}
          onChange={(option) => handleDropdownChange(option)}
          className='mr-3'
          placeholder={inputField?.placeholder}
          required={required}
        />
        <Input
          type='hidden'
          name={(tagAsMetadata ? 'metadata:' : '') + inputField?.name}
          value={listValue?.id ?? ''}
        />
        {tagAsMetadata === true && (
          <Input
            type='hidden'
            name={(tagAsMetadata ? 'metadata:' : '') + inputField?.name + '_name'}
            value={listValue?.name ?? ''}
          />
        )}
      </>
    );
  } else {
    return (
      <Input
        placeholder={inputField?.placeholder ?? inputField?.name}
        name={(tagAsMetadata ? 'metadata:' : '') + inputField?.name}
        type={inputField?.type ?? 'text'}
        step='0.1'
        className='mr-3 min-w-20'
        required={required}
        value={textInput ?? ''}
        onChange={(e) => setTextInput(e.target.value)}
      />
    );
  }
}

export default SmartInput;
