import toSlug from './toSlug';

interface ParsingOptions {
  slugifyHeaders?: boolean;
}

export function parseTSVtoJSON(tsv: string, options: ParsingOptions): string[] {
  // Split the input into lines
  const lines = tsv.trim().split('\n');

  // Extract headers (first line) and split them into an array
  const headers =
    lines
      .shift()
      ?.split(/\t/)
      .map(
        // /,|\t/
        (header) =>
          options?.slugifyHeaders === true ? toSlug(header)?.replace(/-/g, '_') : header,
      ) ?? [];

  // Map the remaining lines into objects
  const json = lines.map((line) => {
    const data = line.split(/\t/); // /,|\t/
    const obj: Record<string, string> = {};
    data.forEach((value, index) => {
      obj[headers[index]] = value;
    });
    return obj;
  });

  return json;
}
