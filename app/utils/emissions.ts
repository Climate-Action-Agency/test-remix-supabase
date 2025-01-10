import { getMonth, format } from 'date-fns';
import { Database } from '~/types/supabase';

export interface CityEmissionSummary {
  city: string;
  orders: number;
  last_mile_emission: number;
  regional_emission: number;
  line_haul_emission: number;
  weight: number;
  volume: number;
  last_mile_energy: number;
  regional_energy: number;
  line_haul_energy: number;
}

export interface EmissionPeriodSummary {
  account_id: string;
  slug: string;
  name: string;
  period: string;
  orders: number;
  last_mile_emission: number;
  regional_emission: number;
  line_haul_emission: number;
  weight: number;
  volume: number;
  last_mile_energy: number;
  regional_energy: number;
  line_haul_energy: number;
} // Adjust based on your actual structure

interface CompanyEmission {
  company: string;
  fill: string;
  emissions: number;
}

export function calculateEmissionsData(displayData: EmissionPeriodSummary[]) {
  const chartEmissions = displayData?.reduce(
    (prev, curr) => {
      prev[getMonth(curr.period)].month = format(curr.period, 'MMM');
      prev[getMonth(curr.period)][curr.name] =
        (curr.last_mile_emission + curr.line_haul_emission + curr.regional_emission) / 1000000;
      return prev;
    },
    Array.from({ length: 12 }, () => {
      return {};
    }) as Record<string, number | string>[],
  );

  const chartEmissionsPerCompany = displayData?.reduce(
    (prev, curr, index) => {
      prev[curr.account_id] = {
        company: curr.name,
        fill: `hsl(var(--chart-${index - 1}))`,
        emissions:
          (prev[curr.account_id]?.emissions ? prev[curr.account_id]?.emissions : 0) +
          curr.last_mile_emission +
          curr.line_haul_emission +
          curr.regional_emission,
      };

      return prev;
    },
    {} as Record<string, CompanyEmission>,
  );

  const companyArray = Object.values(chartEmissionsPerCompany);

  const chartEmissionsPerParcelWeight = displayData?.reduce(
    (prev, curr) => {
      prev[getMonth(curr.period)].month = format(curr.period, 'MMM');
      prev[getMonth(curr.period)][curr.name] =
        (curr.last_mile_emission + curr.line_haul_emission + curr.regional_emission) / curr.weight;
      return prev;
    },
    Array.from({ length: 12 }, () => {
      return {};
    }) as Record<string, number | string>[],
  );

  const accounts = [...new Set(displayData?.map((d) => d.name))];

  const totalOrders = displayData?.reduce((prev, curr) => prev + curr.orders, 0);
  const totalWeight = displayData?.reduce((prev, curr) => prev + curr.weight, 0);
  const totalEmissions = displayData?.reduce(
    (prev, curr) =>
      prev + curr.last_mile_emission + curr.line_haul_emission + curr.regional_emission,
    0,
  );

  return {
    chartEmissions,
    chartEmissionsPerCompany,
    companyArray,
    chartEmissionsPerParcelWeight,
    accounts,
    totalOrders,
    totalWeight,
    totalEmissions,
  };
}

export type FunctionGetEmissionsSummaryReturns =
  | Database['public']['Functions']['get_emissions_summary_grouped_by_period']['Returns']
  | null;

export function combineEmissionDataForAllTeams({
  emissionsSummaries,
  account,
}: {
  emissionsSummaries: FunctionGetEmissionsSummaryReturns;
  account: Record<string, string>;
}): Record<string, number>[] {
  return (
    emissionsSummaries
      ?.reduce(
        (prev, curr) => {
          prev[getMonth(curr.period)] = prev[getMonth(curr.period)] || {};

          prev[getMonth(curr.period)].last_mile_emission =
            (prev[getMonth(curr.period)].last_mile_emission
              ? prev[getMonth(curr.period)].last_mile_emission
              : 0) + curr.last_mile_emission;

          prev[getMonth(curr.period)].line_haul_emission =
            (prev[getMonth(curr.period)].line_haul_emission
              ? prev[getMonth(curr.period)].line_haul_emission
              : 0) + curr.line_haul_emission;

          prev[getMonth(curr.period)].regional_emission =
            (prev[getMonth(curr.period)].regional_emission
              ? prev[getMonth(curr.period)].regional_emission
              : 0) + curr.regional_emission;

          prev[getMonth(curr.period)].last_mile_energy =
            (prev[getMonth(curr.period)].last_mile_energy
              ? prev[getMonth(curr.period)].last_mile_energy
              : 0) + curr.last_mile_energy;

          prev[getMonth(curr.period)].line_haul_energy =
            (prev[getMonth(curr.period)].line_haul_energy
              ? prev[getMonth(curr.period)].line_haul_energy
              : 0) + curr.line_haul_energy;

          prev[getMonth(curr.period)].regional_energy =
            (prev[getMonth(curr.period)].regional_energy
              ? prev[getMonth(curr.period)].regional_energy
              : 0) + curr.regional_energy;

          prev[getMonth(curr.period)].orders =
            (prev[getMonth(curr.period)].orders ? prev[getMonth(curr.period)].orders : 0) +
            curr.orders;

          prev[getMonth(curr.period)].volume =
            (prev[getMonth(curr.period)].volume ? prev[getMonth(curr.period)].volume : 0) +
            curr.volume;

          prev[getMonth(curr.period)].weight =
            (prev[getMonth(curr.period)].weight ? prev[getMonth(curr.period)].weight : 0) +
            curr.weight;

          prev[getMonth(curr.period)].name = account.name;
          prev[getMonth(curr.period)].period = curr.period;

          return prev;
        },
        Array.from({ length: 12 }, () => {
          return {};
        }) as Record<string, number>[],
      )
      .filter((d) => d.period) ?? []
  );
}
