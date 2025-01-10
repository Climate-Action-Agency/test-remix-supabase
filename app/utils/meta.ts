/**
 *
  import { MetaFunction } from '@remix-run/react';
  import { buildMeta } from '~/utils/meta';

  // Add this after loader, before the Component
  export const meta: MetaFunction<typeof loader> = (args) => buildMeta({ args, title: 'My Page Title' });

  // Using loader data: export const meta: MetaFunction<typeof loader> = (args) => buildMeta({ args, title: args.data?.categoryName });
 */

import { MetaArgs, MetaDescriptor } from '@remix-run/react';
import config from '~/config/config';
import { getAllMenuItems } from '~/components/navigation/NavigationMenu';

interface MetaProps {
  args?: MetaArgs; // location, matches, data, params, error: https://remix.run/docs/en/main/route/meta
  title?: string;
  description?: string;
  imageUrl?: string; // must be absolute URL
}

export const buildMeta = ({
  args,
  title,
  description,
  imageUrl = `${config.appUrl}share_preview.jpg`,
}: MetaProps = {}): MetaDescriptor[] => {
  const currentPath = args?.location.pathname;
  const accountSlug = args?.params.team;
  const menuItems = getAllMenuItems(accountSlug);
  const currentMenuItem = menuItems.find(
    (menuItem) => menuItem.href !== undefined && currentPath?.startsWith(menuItem.href),
  );

  const titleOrMenuTitle = title ?? currentMenuItem?.title;

  const pageTitle = titleOrMenuTitle
    ? `${titleOrMenuTitle} – ${config.appName}`
    : `${config.appName} – ${config.appTagline}`;

  const pageDescription = description ?? config.appDescription ?? '';

  //   console.log(
  //     `buildMeta:
  // • title (${60 - pageTitle.length}): “${pageTitle}”
  // • description (${160 - pageDescription.length}): “${pageDescription}”
  // • imageUrl: “${imageUrl}”`,
  //   );
  // console.log('args', args);

  return [
    { title: pageTitle },
    {
      property: 'og:title',
      content: pageTitle,
    },
    {
      name: 'description',
      content: pageDescription,
    },
    {
      property: 'og:image',
      content: imageUrl,
    },
  ];
};
