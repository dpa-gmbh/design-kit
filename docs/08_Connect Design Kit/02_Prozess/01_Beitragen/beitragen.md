# Mit Ideen, Anmerkungen und Kritik

*Dir sind beim Stöbern im Design Kit Fehler aufgefallen oder eine Beschreibung ist nicht verständlich?*

Bitte benutze die Github [Issues](https://github.com/dpa-gmbh/design-kit/issues) - sie helfen allen Projektbeteiligten einen Überblick zu behalten und ein Github Account ist schnell erstellt. 

# Als Entwickler oder Designer der mit dem Design-Kits

*Du arbeitest mit dem Design Kit oder nutzt das Design Kit?*

Das Design Kit lebt von dem Beitrag Vieler. Wenn du Ideen hast wie die Arbeit mit dem Design Kit für dich oder andere Entwickler einfacher werden kann ist dein Beitrag sehr wertvoll.

Mit Schreib-Rechten am Repository gehts du am Besten wie folgt vor:

**Mach die Änderungen und Ergänzungen in einem Feature-Branch.**

Wenn du einen neuen Aspket zur Dokumentation hinzufügen möchtest, ist es sinnvoll auf dem letzten Stand der Dokumentation zu arbeiten:

```
git checkout master
git pull origin master
```

Das verhindert Komplikationen beim Zusammenführen der Änderungen.

Arbeite im nächsten Schritt in einer lokalen Branch. Wir haben für  den Begriff 'feature' im Bezug auf die Dokumentation eher ein laxes Verständnis.
Ein guter Feature-Branch Name sorgt im Team für ein gutes Verständnis was das Thema und den Umfang der Änderungen oder Ergänzungen betrifft.

```
git checkout -b add_typography_css
```

Dieser Befehl erzeugt eine neue Branch mit dem Namen `add_typhography_css` - offensichtlich ist das Ziel der Arbeit in dieser Feature-Branch CSS Informationen im bereich Typhography erstmalig zu ergänzen.

Im nächsten Schritt werden die Änderungen druchgeführt. Beispielsweise könnte im Orden Grundlagen/Typography eine CSS-Datei hinzugeüfgt werden.

Comitte im Anschluss die Änderungen.

Stelle die Änderungen dem Team zur Verfügung, indem du die Feature Branch zu `origin` schiebst:

```
git push origin add_typography_css
```

Im abschließenden Schritt kannst du auf der Github Webseite einen Pull Request stellen.

Spare dir bei kleinen Änderungen und Ergänzungen aufwendige ergänzende Erklärungen.

# Als externe Person

Ergänze deinen Beitrag in Form eines Pull Requests. Das Team freut sich über Beitrage von außerhalb. Du musst das Design Kit erst auf der Github-Seite forken. Hier gibt es [weitere Infos in englischer Sprache](https://help.github.com/en/articles/about-pull-requests). Wenn du keine Erfahrung mit Github hast: Ein Entwickler in deinem Team hilft dir sicher gern.