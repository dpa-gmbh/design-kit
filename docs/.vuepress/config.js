module.exports = {
    base: "/design-kit/",
    head: [
        [
            'script',
            {
                src: 'https://unpkg.com/vue'
            }
        ],
        [
            'script',
            {
                src: 'https://unpkg.com/@dpa-connect/user@0.4.0/dist/cdk-user.min.js'
            }
        ],
    ],
    themeConfig: {
        nav: false,
        sidebar: [
            {
                title: "Über das Design Kit",
                children: [
                    "./connect-design-kit/",
                    "./connect-design-kit/was-wie-wieso",
                    "./connect-design-kit/glossar"
                ]
            },
            {
                title: "Grundlagen",
                children: [
                    "./grundlagen/",
                    "./grundlagen/farben",
                    "./grundlagen/schriftart"
                ]
            },
            {
                title: "Komponenten",
                children: [
                    "./komponenten/form",
                    "./komponenten/buttons"
                ]
            },
            {
                title: "Werteinheiten und Akteure",
                children: [
                    "./werteinheiten-und-akteure/",
                    "./werteinheiten-und-akteure/nutzer",
                    "./werteinheiten-und-akteure/mitarbeiter",
                    "./werteinheiten-und-akteure/team",
                    "./werteinheiten-und-akteure/tool",
                    "./werteinheiten-und-akteure/material",
                    "./werteinheiten-und-akteure/medienformat"
                ]
            },
            {
                title: "Interaktionen",
                children: ["./interaktionen/anmelden-mit-dpa-id"]
            }
        ]
    }
};
