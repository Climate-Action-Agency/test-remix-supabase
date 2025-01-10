function toSlug(
  str: string | null | undefined,
  replaceInternationalChars = true,
): string | null | undefined {
  // Abort if not a proper string value
  if (!str || typeof str !== 'string') {
    return str;
  }
  // For both
  let newStr = str
    .trim()
    .toLowerCase()
    .replace(/ |_|\//g, '-'); // space/underscore/slash to dash
  // Remove ÅÄÖ etc?
  if (replaceInternationalChars) {
    newStr = newStr
      .replace(/[åäæâãáà]/g, 'a')
      .replace(/[ëêéè]/g, 'e')
      .replace(/[öøôõóò]/g, 'o')
      .replace(/[üûúù]/g, 'u'); // convert ÅÄÖÜ to Latin characters
    newStr = newStr.replace(/[^\w-]+/g, ''); // remove all other characters
  } else {
    newStr = newStr.replace(/[\t.,?;:‘’“”"'`!@#$€%^&§°*<>()[\]{}_+=/|\\]/g, ''); // remove invalid characters but keep ÅÄÖ etc
  }
  // For both
  newStr = newStr
    .replace(/---/g, '-') // fix for the ' - ' case
    .replace(/--/g, '-') // fix for the '- ' case
    .replace(/--/g, '-'); // fix for the '- ' case
  return newStr;
}

export default toSlug;
