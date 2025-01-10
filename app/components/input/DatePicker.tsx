'use client';

import * as React from 'react';
import { CalendarIcon } from 'lucide-react';
import { format } from 'date-fns';
import { DateRange } from 'react-day-picker';

import { cn } from '~/@/lib/utils';
import { Button } from '~/@/components/ui/button';
import { Calendar } from '~/@/components/ui/calendar';
import { Popover, PopoverContent, PopoverTrigger } from '~/@/components/ui/popover';
import { useSearchParams } from '@remix-run/react';

export function DatePicker({ className }: React.HTMLAttributes<HTMLDivElement>) {
  const [searchParams, setSearchParams] = useSearchParams();
  const [date, setDate] = React.useState<DateRange | undefined>({
    from: searchParams.get('start_date'),
    to: searchParams.get('end_date'),
  });

  React.useEffect(() => {
    if (
      date?.from &&
      date?.to &&
      (date.from !== searchParams.get('start_date') || date.to !== searchParams.get('end_date'))
    ) {
      const params = new URLSearchParams();
      params.set('start_date', format(date.from, 'yyyy-MM-dd'));
      params.set('end_date', format(date.to, 'yyyy-MM-dd'));
      setSearchParams(params, {
        preventScrollReset: true,
      });
    }
  }, [date]);

  return (
    <div className={cn('grid gap-2', className)}>
      <Popover>
        <PopoverTrigger asChild>
          <Button
            id='date'
            variant={'outline'}
            className={cn(
              'w-[300px] justify-start text-left font-normal',
              !date && 'text-muted-foreground',
            )}
          >
            <CalendarIcon className='mr-2 h-4 w-4' />
            {date?.from ? (
              date.to ? (
                <>
                  {format(date.from, 'LLL dd, y')} - {format(date.to, 'LLL dd, y')}
                </>
              ) : (
                format(date.from, 'LLL dd, y')
              )
            ) : (
              <span>Pick a date</span>
            )}
          </Button>
        </PopoverTrigger>
        <PopoverContent className='w-auto p-0' align='start'>
          <Calendar
            initialFocus
            mode='range'
            defaultMonth={date?.from}
            selected={date}
            onSelect={setDate}
            numberOfMonths={2}
          />
        </PopoverContent>
      </Popover>
    </div>
  );
}
