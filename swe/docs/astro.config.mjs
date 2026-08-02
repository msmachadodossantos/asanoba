// @ts-check
import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';
import mermaid from 'astro-mermaid';

// https://astro.build/config
export default defineConfig({
  server: {
    host: true, // ou '0.0.0.0'
  },
  integrations: [
    mermaid({
      theme: 'default', // Tema base padrão
      autoTheme: true,   // Alterna automaticamente entre claro/escuro com base no Starlight
    }),
    starlight({
      title: 'ASANOBA Docs',
      sidebar: [
        {
          label: 'DB',
          items: [
            { autogenerate: { directory: 'db' } },
          ],
        },
        {
          label: 'DEV',
          items: [
            { autogenerate: { directory: 'dev' } }
          ],
        },
        {
          label: 'SWE',
          items: [
            { autogenerate: { directory: 'swe' } },
          ],
        },
        {
          label: 'UXD',
          items: [
            { autogenerate: { directory: 'uxd' } },
          ],
        },
      ],
    }),
  ],
});
