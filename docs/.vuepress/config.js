module.exports = {
  base: "/design-kit/",
  title: "dpa-Connect Design Kit",
  head: [
    [
      'script',
      {
        src: '/preview.js'
      }
    ],
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
        title: "Grundlagen",
        children: [
          "./grundlagen/farben",
          "./grundlagen/schriftart"
        ]
      },
      {
        title: "Komponenten",
        children: [
          "./komponenten/formular",
          "./komponenten/button",
          "./komponenten/beispiel"
        ]
      },
      {
        title: "Werteinheiten und Akteure",
        children: [
          "./werteinheiten-und-akteure/filter",
          "./werteinheiten-und-akteure/inhalt",
          "./werteinheiten-und-akteure/nutzer",
          "./werteinheiten-und-akteure/medienformat",
          "./werteinheiten-und-akteure/mitarbeiter",
          "./werteinheiten-und-akteure/team",
          "./werteinheiten-und-akteure/tool"
        ]
      },
      {
        title: "Interaktionen",
        children: [
          "./interaktionen/anmelden-mit-dpa-id",
          "./interaktionen/wiederholt-relevantes-finden",
        ]
      },
      {
        title: "Appendix",
        children: [
          "./connect-design-kit/glossar",
          "./connect-design-kit/prozess"
        ]
      },
    ]
  }
};