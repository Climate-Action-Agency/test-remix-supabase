import { useState } from 'react';
import { Select, SelectTrigger, SelectContent, SelectItem } from '~/@/components/ui/select';

interface SelectOption {
  id: string;
  label?: string;
}

interface SelectProps
  extends React.DetailedHTMLProps<
    React.SelectHTMLAttributes<HTMLSelectElement>,
    HTMLSelectElement
  > {
  options: SelectOption[];
}

export const SingleSelect: React.FC<SelectProps> = ({ options, value, onChange }) => {
  const [selectedOption, setSelectedOption] = useState<string | number | null>(value ?? null);

  const handleSelect = (id: string) => {
    setSelectedOption(id);
    onChange?.({ target: { value: id } } as React.ChangeEvent<HTMLSelectElement>);
  };

  return (
    <Select
      value={selectedOption === null ? undefined : (selectedOption as string)}
      onValueChange={handleSelect}
    >
      <SelectTrigger>
        {selectedOption
          ? options.find((option) => option.id === selectedOption)?.label ?? selectedOption
          : 'Select an option'}
      </SelectTrigger>
      <SelectContent>
        {options.map((option) => (
          <SelectItem key={option.id} value={option.id}>
            {option.label ?? option.id}
          </SelectItem>
        ))}
      </SelectContent>
    </Select>
  );
};

export const MultiSelect: React.FC<SelectProps> = ({ options }) => {
  const [selectedOptions, setSelectedOptions] = useState<string[]>([]);

  const handleSelect = (id: string) => {
    setSelectedOptions((prev) =>
      prev.includes(id) ? prev.filter((v) => v !== id) : [...prev, id],
    );
  };

  return (
    <Select>
      <SelectTrigger>
        {selectedOptions.length > 0 ? selectedOptions.join(', ') : 'Select options'}
      </SelectTrigger>
      <SelectContent>
        {options?.map((option) => (
          <SelectItem key={option.id} value={option.id} onClick={() => handleSelect(option.id)}>
            <input
              type='checkbox'
              checked={selectedOptions.includes(option.id)}
              readOnly
              style={{ marginRight: '0.5em' }}
            />
            {option.label ?? option.id}
          </SelectItem>
        ))}
      </SelectContent>
    </Select>
  );
};
