/*
  <SearchDropdown
    options={arrayOfNameAndIds}
    value={currentOptionId}
    onChange={(option) => console.log(option.id)}
    className='mr-3'
  />

  Based on Combobox: https://ui.shadcn.com/docs/components/combobox
*/

import * as React from 'react';
import { Check, ChevronsUpDown } from 'lucide-react';

import { cn } from '~/@/lib/utils';
import { Button } from '~/@/components/ui/button';
import {
  Command,
  CommandEmpty,
  CommandGroup,
  CommandInput,
  CommandItem,
} from '~/@/components/ui/command';
import { Popover, PopoverContent, PopoverTrigger } from '~/@/components/ui/popover';

interface SearchDropdownProps {
  options: NameAndId[] | null;
  value?: number;
  onChange: (value: NameAndId | null) => void;
  className?: string;
  placeholder?: string;
  required?: boolean;
}

function SearchDropdown({
  options,
  value,
  onChange,
  className = '',
  placeholder,
}: SearchDropdownProps) {
  const [open, setOpen] = React.useState(false);
  const [selectedValue, setSelected] = React.useState();

  const currentOption = options?.find((option) => option.id === value);

  const showSetToNull = true;

  return (
    <Popover open={open} onOpenChange={setOpen}>
      <PopoverTrigger asChild>
        <Button
          variant='outline'
          role='combobox'
          aria-expanded={open}
          className={['w-[200px] justify-between overflow-hidden', className].join(' ')}
        >
          {value ? currentOption?.name : placeholder ?? '(select)'}
          <ChevronsUpDown className='ml-2 h-4 w-4 shrink-0 opacity-50' />
        </Button>
      </PopoverTrigger>
      <PopoverContent className='w-[200px] p-0'>
        <Command
          filter={(value: string, search: string) => {
            const filterOption = options?.find((option) => option.id === parseInt(value));
            if (filterOption?.name?.toLowerCase().includes(search.toLowerCase())) return 1;
            return 0;
          }}
        >
          <CommandInput placeholder='Search...' />
          <CommandEmpty>No option found.</CommandEmpty>
          <CommandGroup className='overflow-auto h-64'>
            {showSetToNull && (
              <CommandItem
                onSelect={() => {
                  setSelected(undefined);
                  setOpen(false);
                  onChange(null);
                }}
              >
                <Check
                  className={cn('mr-2 h-4 w-4', value === undefined ? 'opacity-100' : 'opacity-0')}
                />
                (clear value)
              </CommandItem>
            )}
            {options?.map((option) => (
              <CommandItem
                key={option.id}
                value={option.id?.toString()}
                onSelect={(currentValue) => {
                  setSelected(
                    parseInt(currentValue) === selectedValue
                      ? selectedValue
                      : parseInt(currentValue),
                  );
                  setOpen(false);
                  onChange(option);
                }}
              >
                <Check
                  className={cn('mr-2 h-4 w-4', value === option.id ? 'opacity-100' : 'opacity-0')}
                />
                {option.name}
              </CommandItem>
            ))}
          </CommandGroup>
        </Command>
      </PopoverContent>
    </Popover>
  );
}

export default SearchDropdown;
