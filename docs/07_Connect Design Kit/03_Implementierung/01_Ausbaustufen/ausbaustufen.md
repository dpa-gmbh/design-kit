Das Design Kit führt Dokumentation, visuelle Gestaltung und technische Implementierung zusammen. Der Ausbau und die Pflege des Design Kits ist ein kontinuierlicher Prozess der im Zusammenspiel mit der Entwicklung einzelner Apps stattfindet. Naturgemäß sind nicht alle Inhalte vollständig dokumentiert, gestaltet und technisch implementiert.

Im Folgenden sind unterschiedliche Ausbaustufen der einzelnen Arbeitsbereiche definiert:


# Dokumentation

Stufe|Titel|Beschreibung
---|---|---
1 | Name | Die Werteinheit ist benannt, und als Datei angelegt, sie existiert in der Navigation
2 | Skizze / Beispiel         | Es gibt eine Skizze, um den strukturellen Aufbau zu verdeutlichen     
3 | Beschreibung              | Die Werteinheit wurde beschrieben                                     
4 | API-Skizze                | Die Eigenschaften (Properties) der Komponente und mögliche Werte sind in tabellarischer Form erfasst
5 | Begründung der Gestaltung | Die Gestaltungsentscheidungen sind in Textform begründet

# Visuelle Gestaltung

Stufe|Titel|Beschreibung
---|---|---
1 | Visuelle Gestaltung | Die Werteinheit wurde visuell gestaltet
| 2 | Sketch Library      | Die Werteinheit existiert als Teil einer publizierten Sketch Library und nutzt definierte Stile und Symbole
| 3 | Ausprägungen        | Unterschiedliche Zustände und Ausprägungen sind formuliert
| 4 | Im Kontext          | Die Werteinheit wird in unterschiedlichen Kontexten von bestehenden und geplanten Anwendungen gezeigt

# Implementierung

Stufe|Titel|Beschreibung
---|---|---
1 | Code Skizze              | Eine stencil.js Komponente wurde angelegt und existiert im Repository
2 | Visuelle Implementierung | Die Komponente entspricht der visuellen Gestaltung und stellt sich gemäß der unterschiedlichen Eigenschaften (Properties) dar
3 | Publiziert               | Die Komponente ist via npm verfügbar und qualitativ ausreichend für die Einbindung in fremden Projekten
4 | Provider                 | Für die Komponente existiert eine Datenprovider, der entweder Daten von einer API lädt oder komplexere Daten annimmt und nach Darstellungsregeln umformuliert

