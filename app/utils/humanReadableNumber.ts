export function humanReadableNumber(number: number): string {
  if (number >= 10) return Math.round(number).toLocaleString('en-US');
  if (number === 0) return 0;
  return number.toFixed(2).toLocaleString('en-US');
}
