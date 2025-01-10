export function removeUndefinedProps<T>(obj: T): Partial<T> {
  const result: Partial<T> = {}; // Create a new object to hold the result
  for (const key in obj) {
    if (Object.prototype.hasOwnProperty.call(obj, key)) {
      // Check if the property exists in the original object
      const value = obj[key];
      if (value !== undefined) {
        result[key] = value;
      }
    }
  }
  return result;
}

export function removeUndefinedOrNullProps<T>(obj: T): Partial<T> {
  const result: Partial<T> = {}; // Create a new object to hold the result
  for (const key in obj) {
    if (Object.prototype.hasOwnProperty.call(obj, key)) {
      // Check if the property exists in the original object
      const value = obj[key];
      if (value !== undefined && value !== null) {
        result[key] = value;
      }
    }
  }
  return result;
}

export function removeUndefinedOrNullOrEmptyStringProps<T>(obj: T): Partial<T> {
  const result: Partial<T> = {}; // Create a new object to hold the result
  for (const key in obj) {
    if (Object.prototype.hasOwnProperty.call(obj, key)) {
      // Check if the property exists in the original object
      const value = obj[key];
      if (value !== undefined && value !== null && value !== '') {
        result[key] = value;
      }
    }
  }
  return result;
}

export function isUndefinedOrNull<T>(obj: T | null | undefined): obj is null | undefined {
  return obj === null || obj === undefined;
}

export function isUndefinedOrNullOrEmptyString<T>(obj: T | null | undefined | string): boolean {
  return isUndefinedOrNull(obj) || obj === '';
}

export interface TreeNode {
  [key: string]: any; // eslint-disable-line @typescript-eslint/no-explicit-any
  children?: TreeNode[];
}

export function buildObjectTreeFromArray(
  arrayOfObjects: TreeNode[],
  idField: string,
  parentIdField: string,
  parentId: number | string | null = null,
): TreeNode[] {
  const tree: TreeNode[] = [];
  // Filter the array to get all objects with the current parentId
  const children = arrayOfObjects.filter((obj) => obj[parentIdField] === parentId);
  // Loop through the filtered children
  for (const child of children) {
    // Recursively build the tree for each child
    const childNode: TreeNode = {
      ...child,
      children: buildObjectTreeFromArray(
        arrayOfObjects,
        idField,
        parentIdField,
        child[idField] as number,
      ),
    };
    // If no children are found, remove the empty children property
    if (childNode.children?.length === 0) {
      delete childNode.children;
    }
    // Add the built node to the tree
    tree.push(childNode);
  }
  return tree;
}

export const uniqueBy = <T>(values: T[], propertyName: keyof T): T[] =>
  values.reduce((res: T[], item: T) => {
    const exists = res.some((t) => t?.[propertyName] === item?.[propertyName]);
    if (!exists) res.push(item);
    return res;
  }, []);
