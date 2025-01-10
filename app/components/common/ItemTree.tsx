/**
 * Use with buildObjectTreeFromArray
 */

import React, { useState } from 'react';
import { ChevronRight, ChevronDown, Plus } from 'lucide-react';

import { cn } from '~/@/lib/utils';
import { Button } from '~/@/components/ui/button';
import { Input } from '~/@/components/ui/input';
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from '~/@/components/ui/dialog';
import { TreeNode } from '~/utils/objects';

export interface TreeChildNodeData extends TreeNode {
  id?: string;
  name?: string;
  slug?: string;
}

const ItemTree: React.FC<{
  title?: string;
  icon?: React.ReactNode;
  isRootNode?: boolean;
  rootItem?: TreeChildNodeData;
  items: TreeChildNodeData[] | null | undefined;
  keyFunction?: (item: TreeChildNodeData, index: number) => string;
  nameFunction?: (item: TreeChildNodeData) => string;
  ItemComponent?: React.FC<{ item: TreeChildNodeData }>;
  addTitle?: string;
  addButtonLabel?: string;
  addInputType?: 'text' | 'email';
  onAdd?: (name: string, parentAccountId: string | null) => void;
  parentAccountId?: string;
  childrenCanAdd?: boolean;
}> = ({
  isRootNode = true,
  rootItem,
  items,
  title,
  icon,
  keyFunction = (item: TreeChildNodeData, index: number) => item.id ?? `item-${index}`,
  nameFunction = (item: TreeChildNodeData) => item.name ?? '(no name)',
  ItemComponent = DefaultItemNode,
  parentAccountId,
  addInputType,
  onAdd,
  addTitle = 'Add New',
  addButtonLabel = 'Add',
  childrenCanAdd = true,
}) => {
  return (
    <ItemTreeRoot
      name={title}
      icon={icon}
      rootItem={rootItem}
      ItemComponent={isRootNode ? DefaultItemNode : ItemComponent}
    >
      {items?.map((item, index) => (
        <ItemTree
          key={keyFunction(item, index)}
          title={nameFunction(item)}
          parentAccountId={(item.parent_account_id as string) ?? parentAccountId}
          isRootNode={false}
          rootItem={item}
          items={item.children}
          keyFunction={keyFunction}
          nameFunction={nameFunction}
          addTitle={addTitle}
          addButtonLabel={addButtonLabel}
          addInputType={addInputType}
          onAdd={childrenCanAdd ? onAdd : undefined}
          ItemComponent={ItemComponent}
        />
      ))}
      {onAdd && (
        <div className='ml-2'>
          <AddItemDialog
            title={addTitle}
            buttonLabel={addButtonLabel}
            addInputType={addInputType}
            onAdd={onAdd}
            parentAccountId={(rootItem?.parent_account_id as string) ?? parentAccountId}
          />
        </div>
      )}
    </ItemTreeRoot>
  );
};
export default ItemTree;

const DefaultItemNode: React.FC<{ item: TreeChildNodeData }> = ({ item }) => (
  <div className='item select-none'>{item.name}</div>
);

interface TreeRootNodeData {
  name?: string;
  icon?: React.ReactNode;
  rootItem?: TreeChildNodeData;
  children?: React.ReactNode;
  ItemComponent?: React.FC<{ item: TreeChildNodeData }>;
}

const ItemTreeRoot: React.FC<TreeRootNodeData> = ({
  name,
  icon,
  children,
  rootItem = { name: name },
  ItemComponent = DefaultItemNode,
}) => {
  const [isOpen, setIsOpen] = useState(false);
  return (
    <div className={cn('mb-2', isOpen && 'mb-6')}>
      <div
        className='flex items-center space-x-2 cursor-pointer'
        onClick={() => setIsOpen(!isOpen)}
      >
        {children ? (
          isOpen ? (
            <ChevronDown className='h-4 w-4' />
          ) : (
            <ChevronRight className='h-4 w-4' />
          )
        ) : (
          <div className='w-4' />
        )}
        {icon}
        <ItemComponent item={rootItem} />
      </div>
      {isOpen && children && <div className='ml-6 mt-2'>{children}</div>}
    </div>
  );
};

const AddItemDialog: React.FC<{
  title: string;
  buttonLabel: string;
  addInputType?: 'text' | 'email';
  onAdd: (name: string, parentAccountId: string | null) => void;
  parentAccountId?: string;
}> = ({ addInputType = 'text', title, buttonLabel, onAdd, parentAccountId }) => {
  const [isOpen, setIsOpen] = useState(false);
  const [inputValue, setInputValue] = useState('');
  return (
    <Dialog open={isOpen} onOpenChange={setIsOpen}>
      <DialogTrigger asChild>
        <Button variant='outline' size='sm' className='ml-4 select-none'>
          <Plus className='h-4 w-4 mr-2' />
          {buttonLabel}
        </Button>
      </DialogTrigger>
      <DialogContent>
        <DialogHeader>
          <DialogTitle>{title}</DialogTitle>
        </DialogHeader>
        <div className='grid gap-4 py-4'>
          <div className='grid grid-cols-4 items-center gap-4'>
            <Input
              id='inputValue'
              name='inputValue'
              value={inputValue}
              onChange={(e) => setInputValue(e.target.value)}
              className='col-span-3'
              placeholder={addInputType.replace('text', 'Name')}
              type={addInputType}
              required
            />
            <Button
              onClick={() => {
                onAdd(inputValue, parentAccountId ?? null);
                setInputValue('');
                setIsOpen(false);
              }}
            >
              {buttonLabel}
            </Button>
          </div>
        </div>
      </DialogContent>
    </Dialog>
  );
};
