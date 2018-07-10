---
title: Berichterstattung
term: coverage
tags:
  - status:entwurf
synonyms:
  - Planung
---
<TagList :items="$page.frontmatter.tags" title="Tags" />
# {{$page.frontmatter.title}}
<SynonymList :items="$page.frontmatter.synonyms" title="Synonyme"></SynonymList>

Berichterstattung ist die Summe aller gesendeten und geplanten [Inhalte](./inhalt.md) der dpa oder anderer Anbieter zu einem bestimmten Thema oder Termin.

## Gestaltung
![](./berichterstattung/berichterstattung.png)

## Beispiel

![](./berichterstattung/berichterstattung-anwendung.png)

> 13 Texte gesendet, 2 weitere Texte geplant; 2 Bilder und 1 Audio-Inhalt gesendet; 2 Videos geplant

## Beschreibung

### Reihenfolge

Die Anzahl der gesendeten Inhalte wird vor der Anzahl der geplanten Inhalte gezeigt.
Die Reihenfolge richtet sich nach dem [Medienformat](./medienformat.md).

- Text
- Bild
- Audio
- Video
- Grafik
- Sonstige

</audio>

::: tip Iterationsrichtung
* Darstellung bei geringer Breite
* Form Variante (kein Kreis) testen
* Visuelle Verfeinerung, Rahmenstärke zu Icon Elementen
:::