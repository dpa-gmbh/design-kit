---
title: Erstmalige Nutzung mit dpa·ID
tags:
  - status:entwurf
synonyms:
  - Registrierung
---
<TagList :items="$page.frontmatter.tags" title="Tags" />
# Erstmalige Nutzung mit dpa·ID

Erstmalige Nutzung eines [Tools](../werteinheiten-und-akteure/tool) mit dpa·ID

## Beschreibung

### Ziel
Der Anbieter eines Tools möchte neuen Nutzeren einen schnellen Einstieg in das Tool erlauben.

### Bedürfnis
Der Nutzer möchte ein Tool, dass er bisher nicht kennt testen.

### Situation
- Der Nutzer hat das Tool noch nicht genutzt.
- Der Nutzer hat und kennt seine dpa·ID oder hat bisher nicht keine dpa·ID


## Flow

::: tip Iterationssrichtung
- Gegenlesen
- Interaktion als Grafik darstellen
- Gestaltung für Berechtigung Datenzugriff, Dialog Datenschutz, Nicht Authorisiert
:::

<!-- ![](./anmelden/ixd-anmelden-flow.png)-->

### <Step number="1" /> Schritt 1: Einstieg

#### Was passiert
Nutzer gibt URL von der App ein

#### Was sieht er
Login mit dpa·ID Button
**oder** unmittelbare Weiterleitung zur Login-Maske, wenn das Tool ausschließlich Login mit dpa·ID anbietet.

#### Hinweise
Der dpa·ID Button sollte immer vorgaben-getreu eingebunden werden und prominent dargestellt werden. Andere Login-Möglichkeiten kann es zusätzlich auch geben.

### <Step number="2" /> Schritt 2: Login

#### Was passiert
Das System leitet den Nutzer zum Login Screen für die dpa·ID weiter.

#### Was sieht er

Den Login-Screen ([Beispiel](https://staging.dpa-id.de/cas/login?service=https://devel.agenda-reloaded.de/useradmin/tokenexchange?service=https://devel.agenda-reloaded.de/app/home&locale=de)). Der Nutzer hat auch die Möglichkeit eine neue dpa·ID anzulegen.
In Zukunft soll außerdem ein Link zu einer Produktseite mit weiteren Informationen
bereitgestellt werden.

### <Step number="3" /> Schritt 3: Registrierung oder Login

#### Was passiert

##### <Step number="3a" />
Der Nutzer klickt auf "dpa·ID" anlegen, weiter bei Schritt 4.

##### <Step number="3b" />
Der Nutzer hat eine dpa·ID und meldet sich an. Weiter bei Schritt 7.

### <Step number="4" /> Schritt 4: Registrierung

Den Registrierungs-Screen für die dpa·ID ([Beispiel](https://sso.dpa-id.de/useradmin/register)).

### <Step number="5" /> Schritt 5: Bestätigungs E-Mail

Der Nutzer erhält eine manuell ausgelöste Bestätigung und so seine dpa·ID.

*Diese E-Mail sollte dem Nutzer einen Anschluss an das ursprünglich erwartetet Ergebnis des Nutzers (Test eines konkreten Tools) ermöglichen.*

### <Step number="6" /> Schritt 6: Berechtigung Datenzugriff

**Nur bei externen Tools**

Vergleiche [Authorisierung von 3rd Party Apps von Twitter und anderen](https://www.google.de/search?biw=1282&bih=697&tbm=isch&sa=1&ei=9ipHW6a0IsiVsAGasYugAg&q=authorize+app&oq=authorize+app&gs_l=img.3..0i19k1.9913.9913.0.10062.1.1.0.0.0.0.102.102.0j1.1.0....0...1c.1.64.img..0.1.101....0.fbjr-z7r29Q);

### <Step number="7" /> Schritt 7: Innerhalb des Tools

#### Was passiert
Der Nutzer ist authentifiziert und erstmalig in dem Tool.

#### Was sieht er

##### <Step number="7a" />
Der Dialog für AGB und Datenschutz wird angezeigt. Die Gestaltung kann auf Basis von [Dialog](../komponenten/dialog) erfolgen.

##### <Step number="7b" />
Der Nutzer ist authentifiziert, aber nicht authorisiert das Tool zu nutzen
Eine Fehlermeldung, dass der Nutzer nicht berechtigt ist das Tool zu benutzen.

Auf diesem Screen sollten die folgenden Informationen kommuniziert werden:

- Wer ist angemeldet?
- Welches Tool wird genutzt?
- Was ist der Grund, wieso ist der Nutzer unberechtigt?
- Wer kann weiterhelfen?
