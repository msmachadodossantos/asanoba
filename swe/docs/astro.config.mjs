// @ts-check
import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';

// https://astro.build/config
export default defineConfig({
  server: {
    host: true, // ou '0.0.0.0'
  },
  integrations: [
    starlight({
      title: 'ASANOBA Docs',
      sidebar: [
        {
          label: 'Documentação',
          items: [
            { autogenerate: { directory: 'db' } },
            { autogenerate: { directory: 'dev' } },
            { autogenerate: { directory: 'guides' } },
            { autogenerate: { directory: 'reference' } },
            { autogenerate: { directory: 'swe' } },
            { autogenerate: { directory: 'uxd' } },
          ],
        },
      ],
    }),
  ],
});
