module.exports = {
  base: '/design-kit/',
  title: 'dpa-Connect Design Kit',
  head: [
    [
      'script',
      {
        src: 'https://unpkg.com/@webcomponents/webcomponentsjs@2.0.0/webcomponents-loader.js'
      }
    ],
    [
      'script',
      {
        src: 'https://unpkg.com/vue'
      }
    ],
    [
      'script',
      {
        src: 'https://unpkg.com/@dpa-connect/user@0.5.0/dist/cdk-user.min.js'
      }
    ],
  ],
  themeConfig: {
    repo: 'dpa-connect/design-kit',
    lastUpdated: 'Letzte Änderung',
    docsDir: 'docs',
    editLinks: true,
    editLinkText: 'Diese Seite bearbeiten',
    sidebar: [{
        title: 'Grundlagen',
        children: [
          '/',
          '/grundlagen/farben',
          '/grundlagen/schriftart'
        ]
      },
      {
        title: 'Komponenten',
        children: [
          '/komponenten/button',
          '/komponenten/dialog',
          '/komponenten/formular',
          '/komponenten/beispiel'
        ]
      },
      {
        title: 'Werteinheiten und Akteure',
        children: [
          '/werteinheiten-und-akteure/berichterstattung',
          '/werteinheiten-und-akteure/filter',
          '/werteinheiten-und-akteure/inhalt',
          '/werteinheiten-und-akteure/nutzer',
          '/werteinheiten-und-akteure/medienformat',
          '/werteinheiten-und-akteure/mitarbeiter',
          '/werteinheiten-und-akteure/team',
          '/werteinheiten-und-akteure/tool'
        ]
      },
      {
        title: 'Interaktionen',
        children: [
          '/interaktionen/erstmalige-nutzung-mit-dpa-id',
          '/interaktionen/anmelden-mit-dpa-id',
          '/interaktionen/wiederholt-relevantes-finden',
        ]
      },
      {
        title: 'Appendix',
        children: [
          '/connect-design-kit/glossar',
          '/connect-design-kit/prozess'
        ]
      },
    ]
  }
};