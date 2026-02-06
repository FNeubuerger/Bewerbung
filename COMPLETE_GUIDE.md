# Kompletter Überblick: Bewerbung Template Struktur

## 📋 Überblick

Dieses Template generiert automatisch **5 verschiedene PDF-Dateien** für Deine Bewerbung:

### Einzelne Dokumente
1. **anschreiben.pdf** - Anschreiben allein (2-3 Seiten)
2. **cv.pdf** - Lebenslauf allein (1-2 Seiten)
3. **anhang.pdf** - Beilagen/Zeugnisse allein (beliebig lang)

### Kombinierte Dokumente (das brauchst Du zum Einreichen!)
4. **Bewerbung_Einzeln.pdf** ✅ **DIES IST DEINE KOMPLETTE BEWERBUNG** 
   - Anschreiben + Lebenslauf + Zeugnisse + Publikationen
   - Alle in EINER PDF-Datei
   - Richtige Seitennummerierung und Lesezeichen (Bookmarks)

5. **Bewerbung_Komplett.pdf** - Alternative (erfordert shell-escape)
   - Gleiches Ergebnis wie Bewerbung_Einzeln.pdf
   - Kompliziertere Kompilation

---

## 🏗️ Dateistruktur

```
Bewerbung/
├── Vorlage/                          # LaTeX Template-Dateien
│   ├── anschreiben.tex               # Template für Anschreiben
│   ├── cv.tex                        # Template für Lebenslauf
│   ├── anhang.tex                    # Template für Beilagen
│   ├── Bewerbung_Einzeln.tex         # ← KOMPLETT-TEMPLATE (start here!)
│   ├── Bewerbung_Komplett.tex        # Alternative
│   ├── meta.tex                      # Zentrale Konfiguration
│   ├── Vorlage_Anschreiben.sty       # Style: Anschreiben
│   ├── Vorlage_Lebenslauf.sty        # Style: Lebenslauf
│   ├── Vorlage_Bewerbung.sty         # Style: Kombination
│   └── build/                        # ← HIER WERDEN DIE PDFs ERSTELLT
│       ├── anschreiben.pdf
│       ├── cv.pdf
│       ├── anhang.pdf
│       ├── Bewerbung_Einzeln.pdf     # ← DIESE DATEI BRAUCHST DU!
│       └── Bewerbung_Komplett.pdf
│
├── Inhalt/                           # DEINE INHALTE (Hier editierst du!)
│   ├── BewerberInfos.tex             # ✅ Deine persönlichen Daten (bereits gefüllt)
│   ├── Inhalt-Anschreiben.tex        # ✅ Dein Anschreiben (bereits gefüllt)
│   ├── Inhalt-CV.tex                 # ✅ Dein Lebenslauf (bereits gefüllt)
│   └── Inhalt-Anlagen.tex            # Deine Zeugnisse/Beilagen (muss angepasst werden)
│
├── script/
│   └── texlive.sh                    # Build-Skript für macOS/Linux
│
├── build.ps1                         # ← Build-Skript für Windows PowerShell
├── build.bat                         # ← Build-Skript für Windows Batch
└── Bsp-Bin/                          # Beispiel-Dateien für Fotos, Unterschrift, etc.
    ├── picture.jpg                   # Dein Bewerbungsfoto
    ├── Unterschrift.png              # Deine digitale Unterschrift (optional)
    └── ZeugnisBsp                    # Beispiel-Zeugnisse
```

---

## 🚀 Quick Start

### 1. Alle Dateien kompilieren (Windows)

#### Option A: PowerShell (empfohlen)
```powershell
cd Bewerbung
.\build.ps1
```

#### Option B: Batch
```cmd
cd Bewerbung
build.bat
```

### 2. Deine fertige Bewerbung abholen
```
Bewerbung/Vorlage/build/Bewerbung_Einzeln.pdf
```

Das ist die Datei, die du zum Einreichen brauchst! ✅

---

## 📝 Was wurde bereits für dich ausgefüllt?

✅ **BewerberInfos.tex** (FERTIG)
- Name: Dr. Felix Neubürger
- Adresse: Falkenaue 14, 59872 Meschede
- Telefon: +49 15775389398
- Email: fneubuerger@protonmail.com

✅ **Inhalt-Anschreiben.tex** (FERTIG)
- Anschreiben für Hochschule Rhein-Waal
- Alle deine Informationen integriert

✅ **Inhalt-CV.tex** (FERTIG)
- Persönliche Daten
- Hochschulstudium (PhD, M.Sc., B.Sc.)
- Berufliche Tätigkeiten (FH, Infineon, Tutorium)
- Kompetenzen (Programmiersprachen, ML-Libraries, Datenbanken)
- Sonstige Erfahrung (DPSG, Baseball)

---

## 🔧 Was musst DU noch anpassen?

### 1. Beilagen konfigurieren (Inhalt-Anlagen.tex)

Die Datei `Inhalt/Inhalt-Anlagen.tex` enthält eine Vorlage für deine Zeugnisse. Du musst folgende Dateien hinzufügen:

```tex
% Ersetze die Beispiel-Pfade mit deinen echten Dateien:
\includepdf[pages=-] {Pfad/zur/Abitur.pdf}
\includepdf[pages=-] {Pfad/zum/Bachelor_Zeugnis.pdf}
\includepdf[pages=-] {Pfad/zum/Master_Zeugnis.pdf}
\includepdf[pages=-] {Pfad/zum/Arbeitszeugnis_FH.pdf}
\includepdf[pages=-] {Pfad/zum/Arbeitszeugnis_Infineon.pdf}
\includepdf[pages=-] {Pfad/zum/Scout_Trainer_Zertifikat.pdf}
\includepdf[pages=-] {Pfad/zu/deiner/Publikationsliste.pdf}
```

### 2. Foto und Unterschrift (optional)
- Foto: `Bsp-Bin/picture.jpg` (Seitenverhältnis 3:2)
- Unterschrift: `Bsp-Bin/Unterschrift.png` (optional)

### 3. Publikationen (optional)
- Wenn du eine PDF-Liste deiner Publikationen hast, addiere sie zu Inhalt-Anlagen.tex

---

## 📊 Kompilations-Workflow

Wenn du `.\build.ps1` ausführst, passiert folgendes:

```
1. Cleanup
   └─ Alle *.aux, *.log, etc. Dateien gelöscht
   └─ build/ Verzeichnis geleert

2. Kompilation (in dieser Reihenfolge)
   ├─ anschreiben.tex
   │  └─ anschreiben.pdf ✓
   │
   ├─ cv.tex
   │  └─ cv.pdf ✓
   │
   ├─ anhang.tex
   │  └─ anhang.pdf ✓
   │
   ├─ Bewerbung_Einzeln.tex
   │  └─ Bewerbung_Einzeln.pdf ✓ ← FERTIGE BEWERBUNG!
   │
   └─ Bewerbung_Komplett.tex (optional)
      └─ Bewerbung_Komplett.pdf

3. Output
   └─ Alle PDFs in: Vorlage/build/
```

---

## ✅ Checkliste vor dem Einreichen

- [ ] Ich habe `.\build.ps1` ausgeführt
- [ ] `Bewerbung/Vorlage/build/Bewerbung_Einzeln.pdf` existiert
- [ ] Ich habe meine echten Zeugnisse in `Inhalt-Anlagen.tex` eingebunden
- [ ] Das Anschreiben ist inhaltlich richtig (Name, Adresse, Stellenbezeichnung)
- [ ] Der Lebenslauf ist aktuell und vollständig
- [ ] Die Kontaktinformationen stimmen

---

## 🐛 Häufige Probleme

### Problem: "pdflatex: command not found"
**Lösung:** LaTeX installieren
- Windows: MiKTeX (https://miktex.org/) oder TeX Live
- Mac: MacTeX (https://tug.org/mactex/)
- Linux: `sudo apt-get install texlive-full`

### Problem: PDFs werden nicht generiert
**Lösung:** 
1. Stelle sicher, dass alle Dateien in `Inhalt/` existieren
2. Prüfe die Pfade in `meta.tex`
3. Führe `.\build.ps1 -CleanOnly` aus und versuche es erneut

### Problem: Zeugnisse tauchen nicht auf
**Lösung:**
1. Prüfe die Pfade in `Inhalt-Anlagen.tex`
2. Stelle sicher, dass deine PDF-Dateien existieren
3. Teste mit einzelnen Dateien: `\includepdf[pages=-] {test.pdf}`

---

## 📚 Weitere Hilfe

- **README.md** - Original Template Dokumentation
- **BUILD_INSTRUCTIONS.md** - Detaillierte Build-Anleitung
- **Vorlage/** - LaTeX Template Dateien (ändere diese NICHT)
- **Inhalt/** - Deine Inhalte (ändere diese gerne!)

---

## 🎯 Nächste Schritte

1. **Kompilieren:**
   ```powershell
   .\build.ps1
   ```

2. **Überprüfen:**
   - Öffne `Vorlage/build/Bewerbung_Einzeln.pdf`
   - Prüfe: Anschreiben, Lebenslauf, Zeugnisse

3. **Anpassen:**
   - Bearbeite `Inhalt-Anlagen.tex` mit deinen echten Zeugnissen
   - Prüfe alle Inhalte nochmal

4. **Einreichen:**
   - Sende `Bewerbung_Einzeln.pdf` ein
   - Fertig! ✅
