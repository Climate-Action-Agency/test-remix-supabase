import React from 'react';

import packageJson from '../../../package.json';
import config from '~/config/config';

const AppVersion: React.FC = () => (
  <>
    <div className='text-white/30 text-xs'>
      Test App v{packageJson.version}
      {config.environmentName !== 'production' && ` (${config.environmentName})`}
    </div>
  </>
);
export default AppVersion;
