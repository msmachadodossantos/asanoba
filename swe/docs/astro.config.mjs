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
      title: 'ASANOBA [0.0.0]',
      sidebar: [
        {
          label: 'Getting Started',
          collapsed: true,
          items: [
            { autogenerate: { directory: 'getting-started' } },
          ],
        },
        {
          label: 'Project Documentation',
          collapsed: true,
          items: [
            {
              label: 'Requirements Engineering',
              collapsed: true,
              items: [
                { autogenerate: { directory: 'project-documentation/requirements-engineering' } },
              ],
            },
            {
              label: 'Design & Architecture',
              collapsed: true,
              items: [
                { autogenerate: { directory: 'project-documentation/design-and-architecture' } },
              ],
            },
            {
              label: 'Project & Quality Management',
              collapsed: true,
              items: [
                { autogenerate: { directory: 'project-documentation/project-and-quality-management' } },
              ],
            },
            {
              label: 'Testing & QA',
              collapsed: true,
              items: [
                { autogenerate: { directory: 'project-documentation/testing-and-qa' } },
              ],
            },
            {
              label: 'Change & Release Management',
              collapsed: true,
              items: [
                { autogenerate: { directory: 'project-documentation/change-and-release-management' } },
              ],
            },
          ],
        },
        {
          label: 'Internal Documentation',
          collapsed: true,
          items: [
            {
              label: 'Platform and Operations Teams',
              collapsed: true,
              items: [
                {
                  label: 'Infra Team',
                  collapsed: true,
                  items: [
                    { autogenerate: { directory: 'internal-documentation/paot/infra-team' } },
                  ],
                },
                {
                  label: 'Operations Team',
                  collapsed: true,
                  items: [
                    { autogenerate: { directory: 'internal-documentation/paot/operations-team' } },
                  ],
                },
              ],
            },
            {
              label: 'Product & Core Stream',
              collapsed: true,
              items: [
                {
                  label: 'Business Analysis Team',
                  collapsed: true,
                  items: [
                    { autogenerate: { directory: 'internal-documentation/pacs/business-analysis-team' } },
                  ],
                },
                {
                  label: 'Java Dev Team',
                  collapsed: true,
                  items: [
                    { autogenerate: { directory: 'internal-documentation/pacs/java-dev-team' } },
                  ],
                },
                {
                  label: 'PHP Dev Team',
                  collapsed: true,
                  items: [
                    { autogenerate: { directory: 'internal-documentation/pacs/php-dev-team' } },
                  ],
                },
                {
                  label: 'Product Design Team',
                  collapsed: true,
                  items: [
                    { autogenerate: { directory: 'internal-documentation/pacs/product-design-team' } },
                  ],
                },
              ],
            },
            {
              label: 'Qualification and Basic Engineering Teams',
              collapsed: true,
              items: [
                {
                  label: 'Core Engineering Team',
                  collapsed: true,
                  items: [
                    { autogenerate: { directory: 'internal-documentation/qabet/core-engineering-team' } },
                  ],
                },
                {
                  label: 'Data Team',
                  collapsed: true,
                  items: [
                    { autogenerate: { directory: 'internal-documentation/qabet/data-team' } },
                  ],
                },
              ],
            },
          ],
        },
      ],
    }),
  ],
});
