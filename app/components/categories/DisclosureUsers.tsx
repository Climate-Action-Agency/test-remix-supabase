import { AccountRole } from '~/.server/services/accounts';
import { FunctionGetViewCategoriesOverviewReturns } from '~/.server/services/categories';
import { Avatar, AvatarFallback } from '~/@/components/ui/avatar';

export const DisclosureUsers: React.FC<{
  category: FunctionGetViewCategoriesOverviewReturns;
  role: AccountRole;
}> = ({ category, role }) => {
  const users = category.child_category_users?.filter((u) => u !== null && u?.role === role);

  if (!users?.length) return null;
  if (users?.length === 1) {
    return (
      <Avatar>
        <AvatarFallback>{users?.[0]?.name.substring(0, 2)}</AvatarFallback>
      </Avatar>
    );
  }
  if (users?.length > 1) {
    return (
      <div className='flex -space-x-2'>
        {users.map((user, index) =>
          index < 2 ? (
            <Avatar key={user?.id}>
              <AvatarFallback>{user?.name.substring(0, 2)}</AvatarFallback>
            </Avatar>
          ) : null,
        )}
        {users.length > 2 && (
          <Avatar>
            <AvatarFallback>+{users.length - 2}</AvatarFallback>
          </Avatar>
        )}
      </div>
    );
  }
};
