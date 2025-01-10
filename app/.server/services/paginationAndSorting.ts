import { DEFAULT_PAGE_SIZE } from '~/config/config';

/** ?page=1&pagesize=10&sort=name&order=desc */
export function getPageAndSort(request: Request): DataPageAndSort {
  const url = new URL(request.url);
  const pageAndSort: DataPageAndSort = {
    pageNr: parseInt(url.searchParams.get('page') ?? '1', 10),
    pageSize: parseInt(url.searchParams.get('pagesize') ?? DEFAULT_PAGE_SIZE.toString(), 10),
    sortBy: url.searchParams.get('sort') ?? undefined,
    sortOrder: url.searchParams.get('order') === 'desc' ? 'desc' : 'asc',
  };
  return pageAndSort;
}

interface SupabaseQueryFunction {
  range: (start: number, length: number) => SupabaseQueryFunction;
  order: (column: string, options: { ascending: boolean }) => SupabaseQueryFunction;
}

export function supabasePaginationAndSorting(
  query: SupabaseQueryFunction,
  pageAndSort: DataPageAndSort,
): SupabaseQueryFunction {
  // Pagination
  if (pageAndSort?.pageNr) {
    const pageNr = pageAndSort?.pageNr ?? 1;
    const pageSize = pageAndSort.pageSize ?? 10;
    const from = (pageNr - 1) * pageSize;
    const to = from + pageSize - 1;
    query = query.range(from, to);
  }
  // Sorting
  if (pageAndSort?.sortBy) {
    query = query.order(pageAndSort.sortBy, { ascending: pageAndSort.sortOrder !== 'desc' });
  }
  return query;
}
