/*
  import config from '~/config/config'
  import { isDevelopment } from '~/config/config'
  console.log(config.appUrl)
*/

import packageJson from '../../package.json';
import isClientSide from '~/utils/isClientSide';

const envVariables = isClientSide() ? window.ENV : process.env;
const environmentName = envVariables?.NODE_ENV;
const environmentType = environmentName === 'development' ? 'development' : 'production';
export const isDevelopment = environmentType === 'development';

interface EnvironmentConfiguration {
  // serverPort: number;
  appSlug: string;
  appVersion: string;
  appUrl: string;
  environmentName: string;

  appName: string;
  appTagline?: string;
  appDescription?: string;
  appCopyright?: string;

  locale?: string;
  hubspotId?: number;
}

interface AllConfigurations {
  default?: EnvironmentConfiguration;
  development?: Partial<EnvironmentConfiguration>;
  production?: Partial<EnvironmentConfiguration>;
  test?: Partial<EnvironmentConfiguration>;
}

export const completeConfig: AllConfigurations = {
  default: {
    appSlug: packageJson.name,
    appVersion: packageJson.version,
    appUrl: envVariables?.APP_URL ?? 'https://platform.climateaction.agency/',
    environmentName,
    appName: 'Test Remix Supabase',
    appTagline: 'Test app for Remix and Supabase',
    appDescription: 'This is a test app for Remix and Supabase.',
    appCopyright: '© The Climate Action Agency',
    locale: 'en-US',
  },

  development: {
    appUrl: `http://localhost:3000/`,
  },

  production: {},
};

// Public API

const config = { ...completeConfig.default, ...completeConfig[environmentType] };
export default config;

export const DEFAULT_PAGE_SIZE = 10;
