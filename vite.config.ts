import { vitePlugin as remix } from '@remix-run/dev';
import { defineConfig } from 'vite';
import tsconfigPaths from 'vite-tsconfig-paths';
import { vercelPreset } from '@vercel/remix/vite';

export default defineConfig({
  server: {
    port: 3000,
  },
  plugins: [
    remix({
      presets: [vercelPreset()],
      ignoredRouteFiles: ['**/*.css'],
      future: { v3_singleFetch: true },
    }),
    tsconfigPaths(),
  ],
});

declare module '@remix-run/node' {
  interface Future {
    v3_singleFetch: true;
  }
}
