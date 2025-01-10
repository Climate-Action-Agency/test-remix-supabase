interface HeadingProps extends React.HTMLAttributes<HTMLHeadingElement> {
  level?: 'h1' | 'h2' | 'h3' | 'h4';
}

/** e.g. \<Heading level='h2'>My subtitle\</Heading> */
export const Heading: React.FC<HeadingProps> = ({
  level = 'h1',
  className,
  children,
  ...props
}) => {
  const Tag = level;

  return (
    <Tag className={className} {...props}>
      {children}
    </Tag>
  );
};
