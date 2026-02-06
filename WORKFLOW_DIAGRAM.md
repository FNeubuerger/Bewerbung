# 📊 Diagramm: Der komplette Workflow

## 🏗️ Wie alles zusammenhängt

```
START: .\build.ps1 ausführen
  │
  ├─ Cleanup & Vorbereitung
  │  ├─ Löschen aller *.aux, *.log, etc.
  │  ├─ Erstellen von build/
  │  └─ Navigieren zu Vorlage/
  │
  ├─ KOMPILATION PHASE 1: Einzelne Dokumente
  │  │
  │  ├─ 📝 anschreiben.tex
  │  │  ├─ \input{meta.tex}                   ← Zentrale Konfiguration
  │  │  ├─ \input{BewerberInfos.tex}          ← Deine Daten (Name, Adesse, etc.)
  │  │  └─ \input{Inhalt-Anschreiben.tex}    ← Dein Anschreiben-Text
  │  │  └─ OUTPUT: anschreiben.pdf ✓
  │  │
  │  ├─ 📋 cv.tex
  │  │  ├─ \input{meta.tex}                   ← Zentrale Konfiguration
  │  │  ├─ \input{BewerberInfos.tex}          ← Deine Daten (Name, Adesse, etc.)
  │  │  └─ \input{Inhalt-CV.tex}              ← Dein Lebenslauf
  │  │  └─ OUTPUT: cv.pdf ✓
  │  │
  │  └─ 📎 anhang.tex
  │     ├─ \input{meta.tex}                   ← Zentrale Konfiguration
  │     ├─ \input{BewerberInfos.tex}          ← Deine Daten
  │     └─ \input{Inhalt-Anlagen.tex}         ← Deine Zeugnisse/Beilagen
  │     └─ OUTPUT: anhang.pdf ✓
  │
  ├─ KOMPILATION PHASE 2: Komplette Bewerbung
  │  │
  │  └─ 🎯 Bewerbung_Einzeln.tex
  │     ├─ \input{meta.tex}
  │     ├─ \input{BewerberInfos.tex}
  │     ├─ \input{anschreiben.pdf}            ← Verwendet OUTPUT von Phase 1
  │     ├─ \input{cv.pdf}                     ← Verwendet OUTPUT von Phase 1
  │     └─ \input{anhang.pdf}                 ← Verwendet OUTPUT von Phase 1
  │     └─ OUTPUT: Bewerbung_Einzeln.pdf ✅ ← DIESE SENDEST DU AB!
  │
  └─ ✅ FERTIG!

```

---

## 📂 Eingabe-Dateien (Was du gestaltest)

```
Inhalt/
├── BewerberInfos.tex
│   └─ Deine persönlichen Daten
│      ├─ Name, Vorname
│      ├─ Adresse, PLZ, Ort
│      ├─ Telefon
│      ├─ Email
│      └─ Foto, Unterschrift (optional)
│
├── Inhalt-Anschreiben.tex
│   └─ Dein Anschreiben-Text
│      ├─ Empfänger (Hochschule Rhein-Waal)
│      ├─ Betreff
│      └─ Der vollständige Anschreiben-Text
│
├── Inhalt-CV.tex
│   └─ Dein Lebenslauf-Text
│      ├─ Persönliche Daten
│      ├─ Hochschulstudium
│      ├─ Schulbildung
│      ├─ Berufliche Tätigkeiten
│      ├─ Kompetenzen
│      └─ Sonstige Erfahrung
│
└── Inhalt-Anlagen.tex
    └─ Deine Zeugnisse/Beilagen
       ├─ Abschlusszeugnisse
       ├─ Arbeitszeugnisse
       ├─ Zertifikate
       └─ Publikationen

```

---

## 🏭 Zentrale Konfiguration (meta.tex)

```tex
\newcommand* \inhalt        {../Inhalt}
\newcommand* \anschreibenRef {\inhalt/Inhalt-Anschreiben.tex}
\newcommand* \bewerberInfos  {\inhalt/BewerberInfos.tex}
\newcommand* \cvRef          {\inhalt/Inhalt-CV.tex}
\newcommand* \anlagenRef     {\inhalt/Inhalt-Anlagen.tex}
```

→ Diese Mappings verbinden die Templates mit deinen Inhalten!

---

## 📤 Output-Dateien (Was du erhältst)

```
Vorlage/build/
├── anschreiben.pdf
│   └─ 2-3 Seiten: Nur dein Anschreiben
│      (Schöne Formatierung nach DIN 5008)
│
├── cv.pdf
│   └─ 2-3 Seiten: Nur dein Lebenslauf
│      (Mit Foto, Formatierung, Layout)
│
├── anhang.pdf
│   └─ X Seiten: Deine Zeugnisse/Beilagen
│      (Mit Lesezeichen/Bookmarks)
│
├── Bewerbung_Einzeln.pdf ✅ HAUPTDATEI!
│   └─ Kombiniert ALLES IN EINER DATEI:
│      ├─ Titelseite: Anschreiben (mit Seitennummern)
│      ├─ Seiten X-Y: Lebenslauf
│      ├─ Seiten Y-Z: Zeugnisse/Beilagen
│      └─ Mit Lesezeichen (Bookmarks) zum Navigieren
│
└── Bewerbung_Komplett.pdf
    └─ Alternative Kombination (ähnlich wie Einzeln)
```

---

## 🔄 Der DIN 5008 Prozess

```
anschreiben.tex
├─ Vorlage_Anschreiben.sty
│  └─ DIN 5008 Format
│     ├─ 27mm oben (Rand)
│     ├─ 20mm unten (Rand)
│     ├─ Empfänger-Block
│     ├─ Betreff
│     ├─ Anrede
│     ├─ Fließtext
│     ├─ Grußformel
│     └─ Anlagen-Liste

cv.tex
├─ Vorlage_Lebenslauf.sty
│  └─ Schöne Formatierung
│     ├─ Foto (optional)
│     ├─ Persönliche Daten
│     ├─ Zeitachse
│     ├─ Sektionen
│     └─ Bullets für Details

Bewerbung_Einzeln.tex
├─ Vorlage_Bewerbung.sty
│  └─ Kombination & Formatierung
│     ├─ Seitennummern
│     ├─ Lesezeichen (Bookmarks)
│     ├─ Durchlaufende Nummerierung
│     └─ Inhaltsverzeichnis (optional)
```

---

## 📋 Template-Abhängigkeiten

```
Bewerbung_Einzeln.tex
    ↓ (benötigt zuvor kompiliert)
    anschreiben.pdf ────── ← anschreiben.tex ──── ← Inhalt-Anschreiben.tex
    cv.pdf               ← cv.tex              ← Inhalt-CV.tex
    anhang.pdf           ← anhang.tex          ← Inhalt-Anlagen.tex
    ↓ (benutzt auch)
    BewerberInfos.tex    ← (gemeinsam genutzt)
    ↓
    Bewerbung_Einzeln.pdf ✅
```

---

## 🔢 Kompilierungs-Reihenfolge

| Schritt | Datei | Zweck | Output |
|---------|-------|-------|--------|
| 1 | anschreiben.tex | Anschreiben kompilieren | `anschreiben.pdf` |
| 2 | cv.tex | Lebenslauf kompilieren | `cv.pdf` |
| 3 | anhang.tex | Zeugnisse kompilieren | `anhang.pdf` |
| 4 | Bewerbung_Einzeln.tex | Alle kombieren | **`Bewerbung_Einzeln.pdf`** ✅ |

→ Jedes Dokument wird **2x kompiliert** (für Referenzen)

---

## 🎯 Die Entscheidung: Welche PDF versendest du?

```
Bestimmt:
❌ anschreiben.pdf           Zu kurz, unvollständig
❌ cv.pdf                    Zu kurz, unvollständig
❌ anhang.pdf                Nur Zeugnisse
❌ Bewerbung_Komplett.pdf    Alternative (funktioniert auch)

Definitiv:
✅ Bewerbung_Einzeln.pdf     DIESE! Alles in einer Datei!
```

→ **`Bewerbung_Einzeln.pdf`** ist professionell, vollständig und sofort versendbar!

---

## 📊 Datei-Klärung

| Dateiname | Typ | Zweck | Qualität |
|-----------|-----|-------|----------|
| **BewerberInfos.tex** | Inhalt | Zentrale Daten | ✅ Fertig |
| **Inhalt-Anschreiben.tex** | Inhalt | Anschreiben-Text | ✅ Fertig |
| **Inhalt-CV.tex** | Inhalt | Lebenslauf-Text | ✅ Fertig |
| **Inhalt-Anlagen.tex** | Inhalt | Zeugnisse-Referenzen | ⚠️ Template |
| --- | --- | --- | --- |
| **anschreiben.tex** | Template | Formatierung Anschreiben | ✅ Review |
| **cv.tex** | Template | Formatierung CV | ✅ Review |
| **anhang.tex** | Template | Formatierung Anlagen | ✅ Review |
| **Bewerbung_Einzeln.tex** | Template | Kombination aller | ✅ Review |
| --- | --- | --- | --- |
| **anschreiben.pdf** | Output | Anschreiben PDF | ✅ Generated |
| **cv.pdf** | Output | Lebenslauf PDF | ✅ Generated |
| **anhang.pdf** | Output | Zeugnisse PDF | ✅ Generated |
| **Bewerbung_Einzeln.pdf** | Output | **FINALES PDF** | ✅ **Generated** |

---

## 🚀 Der vollständige Workflow

```
1. Starten: .\build.ps1
    ↓
2. Aufräumen: Alte Dateien, Verzeichnis anlegen
    ↓
3. Kompilieren anschreiben.tex
    ├─ Liest: anschreiben.tex
    ├─ Lädt: BewerberInfos.tex
    ├─ Lädt: Inhalt-Anschreiben.tex
    └─ Erstellt: anschreiben.pdf
    ↓
4. Kompilieren cv.tex
    ├─ Liest: cv.tex
    ├─ Lädt: BewerberInfos.tex
    ├─ Lädt: Inhalt-CV.tex
    └─ Erstellt: cv.pdf
    ↓
5. Kompilieren anhang.tex
    ├─ Liest: anhang.tex
    ├─ Lädt: BewerberInfos.tex
    ├─ Lädt: Inhalt-Anlagen.tex
    └─ Erstellt: anhang.pdf
    ↓
6. Kompilieren Bewerbung_Einzeln.tex
    ├─ Liest: Bewerbung_Einzeln.tex
    ├─ Lädt: BewerberInfos.tex
    ├─ KOMBINIERT: anschreiben.pdf
    ├─ KOMBINIERT: cv.pdf
    ├─ KOMBINIERT: anhang.pdf
    └─ Erstellt: Bewerbung_Einzeln.pdf ✅
    ↓
7. Fertig!
    └─ Öffne: Vorlage/build/Bewerbung_Einzeln.pdf
```

---

## ✅ Zusammenfassung

**EINGABE:**
- BewerberInfos.tex (✅ fertig)
- Inhalt-Anschreiben.tex (✅ fertig)
- Inhalt-CV.tex (✅ fertig)
- Inhalt-Anlagen.tex (⚠️ template, sollte angepasst werden)

**PROZESS:**
- `.\build.ps1` ausführen

**AUSGABE:**
- **`Bewerbung_Einzeln.pdf`** ← DIES IST DEINE FERTIGE BEWERBUNG!

**VERSAND:**
- Diese PDF einreichen → ✅ FERTIG!

---

**Ready to go!** 🚀
