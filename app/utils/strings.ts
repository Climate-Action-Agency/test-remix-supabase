/**
 * Capitalizes the first letter (only) of a string.
 */
export const capitalizeFirstLetter = (str: string): string =>
  str.charAt(0).toUpperCase() + str.slice(1);

/**
 * Converts a string to title case.
 */
export const titleCase = (str: string): string =>
  str.replace(/(?:^|\s|[-"'([{])+\S/g, (c) => c.toUpperCase());

/**
 * Cleans a string for safe usage in PostgreSQL queries (quotes, newlines, etc).
 * @param inputString - The input string to be cleaned.
 * @param maxLength - Optional. The maximum length of the cleaned string.
 * @returns The cleaned string.
 */
export function cleanStringForPostgres(inputString: string, maxLength?: number): string {
  // Escape quotes to prevent SQL injection
  let cleanString = inputString.replace(/"/g, '');
  cleanString = cleanString.replace(/'/g, '’');
  // Replace newlines, tabs, and other unwanted characters with a space
  cleanString = cleanString.replace(/[\n\t\r]/g, ' ');
  // Optionally remove non-printable characters (e.g., control characters)
  // cleanString = cleanString.replace(/[^\x20-\x7E]/g, '');
  // If a maxLength is provided, truncate the string to that length
  if (maxLength && cleanString.length > maxLength) {
    cleanString = cleanString.substring(0, maxLength);
  }
  // Trim leading and trailing whitespace
  cleanString = cleanString.trim();
  return cleanString;
}
