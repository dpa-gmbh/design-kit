module.exports = {
    base: "/design-kit/",
    themeConfig: {
        nav: false,
        sidebar: [
            {
                title: "Über das Design Kit",
                children: [
                    "./connect-design-kit/",
                    "./connect-design-kit/was-wie-wieso"
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
                title: "Wertenheiten und akteuren",
                children: [
                    "./wertenheiten-und-akteuren/",
                    "./wertenheiten-und-akteuren/nutzer",
                    "./wertenheiten-und-akteuren/mitarbeiter",
                    "./wertenheiten-und-akteuren/team",
                    "./wertenheiten-und-akteuren/tool",
                    "./wertenheiten-und-akteuren/material",
                    "./wertenheiten-und-akteuren/medienformat"
                ]
            },
            {
                title: "Interaktionen",
                children: ["./interaktionen/anmelden-mit-dpa-id"]
            }
        ]
    }
};
