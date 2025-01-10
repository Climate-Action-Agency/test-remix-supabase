import React from 'react';
import { useSearchParams } from '@remix-run/react';
import {
  Pagination,
  PaginationContent,
  PaginationEllipsis,
  PaginationItem,
  PaginationLink,
  PaginationNext,
  PaginationPrevious,
} from '~/@/components/ui/pagination';
import { DEFAULT_PAGE_SIZE } from '~/config/config';
import { isUndefinedOrNull } from '~/utils/objects';

interface PaginationBarProps {
  pageAndSort: DataPageAndSort;
  totalItemCount?: number | null;
}

const fillArray = (length: number, expression: (index: number) => number): number[] =>
  [...Array<number>(length)].map((_, index) => expression(index));

const DIRECT_BUTTONS = 1;

const PaginationBar: React.FC<PaginationBarProps> = ({ pageAndSort, totalItemCount }) => {
  const [searchParams] = useSearchParams();
  const pageNr = pageAndSort?.pageNr ?? 1;

  const searchParamsPrevPage = new URLSearchParams(searchParams);
  const prevPage = pageNr - 1;
  searchParamsPrevPage.set('page', prevPage.toString());

  const searchParamsNextPage = new URLSearchParams(searchParams);
  const nextPage = pageNr + 1;
  searchParamsNextPage.set('page', nextPage.toString());

  const lastPage = !isUndefinedOrNull(totalItemCount)
    ? Math.ceil((totalItemCount ?? 0) / (pageAndSort?.pageSize ?? DEFAULT_PAGE_SIZE))
    : undefined;

  const directButtonFirstPage = Math.max(pageNr - DIRECT_BUTTONS, 1);
  const directButtonLastPage =
    lastPage !== undefined ? Math.min(pageNr + DIRECT_BUTTONS, lastPage) : pageNr + 2;
  const directButtonNumbers = fillArray(
    directButtonLastPage - directButtonFirstPage + 1,
    (index) => index + directButtonFirstPage,
  );

  const showStartEllipsis = directButtonFirstPage > 1;
  const showEndEllipsis = lastPage !== undefined && directButtonLastPage < lastPage;

  return (
    <Pagination>
      <PaginationContent>
        {prevPage > 0 && (
          <PaginationItem>
            <PaginationPrevious to={`?${searchParamsPrevPage.toString()}`} />
          </PaginationItem>
        )}
        {showStartEllipsis && (
          <>
            <PaginationToPage toPage={1} currentPage={pageNr} />
            <PaginationItem>
              <PaginationEllipsis />
            </PaginationItem>
          </>
        )}
        {directButtonNumbers.map((toPage) => (
          <PaginationToPage key={toPage} toPage={toPage} currentPage={pageNr} />
        ))}
        {showEndEllipsis && (
          <>
            <PaginationItem>
              <PaginationEllipsis />
            </PaginationItem>
            <PaginationToPage toPage={lastPage} currentPage={pageNr} />
          </>
        )}
        {(lastPage === undefined || lastPage > pageNr) && (
          <PaginationItem>
            <PaginationNext to={`?${searchParamsNextPage.toString()}`} />
          </PaginationItem>
        )}
      </PaginationContent>
    </Pagination>
  );
};
export default PaginationBar;

const PaginationToPage: React.FC<{ toPage: number; currentPage?: number }> = ({
  toPage,
  currentPage,
}) => {
  const [searchParams] = useSearchParams();
  const searchParamsNewPage = new URLSearchParams(searchParams);
  searchParamsNewPage.set('page', toPage.toString());
  return (
    <PaginationItem>
      <PaginationLink to={`?${searchParamsNewPage.toString()}`} isActive={toPage === currentPage}>
        {toPage}
      </PaginationLink>
    </PaginationItem>
  );
};
