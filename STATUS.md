# 📞 Kompletter Überblick: Das wurde für dich vorbereitet

## 🎯 Status der Bewerbung

```
✅ ABGESCHLOSSEN:
  └─ Persönliche Daten
  └─ Anschreiben (Hochschule Rhein-Waal)
  └─ Lebenslauf (mit allen Erfahrungen)
  └─ Build-Infrastruktur (Skripte, Templates)

⚠️ NOCH ZU TUN:
  └─ Zeugnisse/Beilagen hinzufügen (wichtig!)
  └─ (\Inhalt-Anlagen.tex anpassen)

✅ OPTIONAL:
  └─ Foto hinzufügen
  └─ Unterschrift hinzufügen
  └─ Publikationen hinzufügen
```

---

## 📊 Das wurde bereits konfiguriert

### 1. Persönliche Daten (BewerberInfos.tex)
```
Name:       Dr. Felix Neubürger
Adresse:    Falkenaue 14, 59872 Meschede
Telefon:    +49 15775389398
Email:      fneubuerger@protonmail.com
Titel:      Dr.
```
✅ Status: **FERTIG** - Keine Änderung nötig

### 2. Anschreiben (Inhalt-Anschreiben.tex)
```
Adressat:   Hochschule Rhein-Waal, Personalreferat, Kleve
Betreff:    Bewerbung als Professor/in für Maschinelles Lernen und Data Science
Inhalt:     ✓ Promotion (PZAI Darmstadt, HAW Hessen)
            ✓ Forschung Predictive Maintenance
            ✓ Projekte WiTraPres, KernTrafo
            ✓ Arbeit bei Infineon (Data Science)
            ✓ Lehrerfahrung (7+ Jahre)
            ✓ Tools: Deep Learning, Explainable AI, LLMs
```
✅ Status: **FERTIG** - Keine Änderung nötig

### 3. Lebenslauf (Inhalt-CV.tex)

#### Persönliche Daten
- Name: Dr. Felix Neubürger
- Geburtsdatum: 13. Juli 1993
- Nationalität: Deutsch

#### Hochschulstudium
- **Dr. rer.nat** (12.2020-laufend): PZAI Darmstadt/HAW Hessen
  - Thema: Predictive Maintenance
  - Cyber-Physical-Systeme, Machine Learning, Explainable AI
  
- **M.Sc. Physik** (10.2016-09.2018): TU Dortmund
  - Astroparticle Physics
  - Thesis: Diffuse Neutrino Spectrum
  
- **B.Sc. Physik** (10.2013-09.2016): TU Dortmund
  - Astroparticle Physics
  - Machine Learning Datenanalyse
  
- **Abitur** (09.2004-06.2013): Phoenix Gymnasium Dortmund
  - Noten: 1,3
  - Leistungskurse: Mathematik, Physik

#### Berufliche Tätigkeiten
- **Data Scientist/Engineer** (01.2024-heute): Infineon Technologies
- **Teaching & Research Assistant** (01.2024-heute): FH Südwestfalen
- **Research Assistant Data Science** (01.2019-12.2023): FH Südwestfalen
- **Tutor** (01.2015-12.2018): TU Dortmund

#### Kompetenzen
- **Programmiersprachen:** Python, C++, R, SQL, Docker, NoSQL
- **ML-Libraries:** TensorFlow, PyTorch, scikit-learn
- **Datenbanken:** MySQL, PostgreSQL, InfluxDB, SQLite
- **Webentwicklung:** HTML, CSS, JavaScript
- **Sprachen:** Deutsch (Muttersprache), Englisch (fließend)
- **OS:** Linux (Ubuntu, Debian, Arch, RedHat), Windows

#### Sonstige Erfahrung
- **DPSG Unna & Meschede:** Scout Leader (seit 2014)
- **BSV NRW:** Baseball Umpire (seit 2014)
- **Zertifikat:** Scout Leader Training DPSG (2023)

✅ Status: **FERTIG** - Keine Änderung nötig

### 4. Build-Infrastruktur

**PowerShell-Skript:** `build.ps1`
- ✅ Automatische Bereinigung von Hilfsdateien
- ✅ Intelligente Fehlererkennung
- ✅ Farbige Status-Ausgabe
- ✅ Kompiliert in richtiger Reihenfolge (anschreiben → cv → anhang → Bewerbung_Einzeln)

**Batch-Skript:** `build.bat`
- ✅ Alternative für Windows ohne PowerShell

**Shell-Skript:** `script/texlive.sh`
- ✅ Für macOS/Linux

**Dokumentation:**
- ✅ `COMPLETE_GUIDE.md` - Ausführliche Dokumentation
- ✅ `BUILD_INSTRUCTIONS.md` - Build-Anleitung
- ✅ `QUICKSTART.md` - Schnellstart-Guide (START HIER!)

✅ Status: **FERTIG** - Einfach `.build.ps1` ausführen

---

## ⚠️ WICHTIG: Das musst du noch tun

### Zeugnisse/Beilagen (Inhalt-Anlagen.tex)

Diese Datei enthält derzeit **Platzhalter**. Du musst die echten PDF-Dateien deiner Zeugnisse einbinden.

**Wie es jetzt aussieht (nicht ideal):**
```tex
\includepdf[pages=-] {\pub ZeugnisBsp}  ← Das ist nur ein Beispiel!
```

**Wie es sein sollte (mit deinen echten Dateien):**
```tex
\includepdf[pages=-] {../../Zeugnisse/Abitur_2013.pdf}
```

**Schritt für Schritt:**

1. **Öffne:** `Inhalt/Inhalt-Anlagen.tex`
2. **Ersetze** die Zeile mit `\pub ZeugnisBsp` durch deine echte Datei
3. **Speichern** und `.\build.ps1` erneut ausführen

**Welche Zeugnisse sind vorgesehen:**
- ☐ Abitur-Zeugnis (Phoenix Gymnasium 2013)
- ☐ Bachelor-Zeugnis (TU Dortmund 2016)
- ☐ Master-Zeugnis (TU Dortmund 2018)
- ☐ Arbeitszeugnis FH Südwestfalen
- ☐ Arbeitszeugnis Infineon Technologies
- ☐ Zertifikat Scout Leader Training (2023)
- ☐ Publikationen (optional)

⚠️ Status: **NOCH AUSSTEHEND** - Deine echten PDFs müssen eingefügt werden

---

## 🎯 Nächste Schritte

### Schritt 1: Kompilieren (jetzt möglich!)
```powershell
cd Bewerbung
.\build.ps1
```

**Output:** `Vorlage/build/Bewerbung_Einzeln.pdf`

### Schritt 2: Überprüfen
- Öffne die PDF
- Stimmt alles? (Anschreiben, CV, Formatierung)
- Alle Informationen korrekt?

### Schritt 3: Zeugnisse hinzufügen (optional, aber empfohlen)
- Sammle deine PDF-Zeugnisse
- Bearbeite `Inhalt-Anlagen.tex`
- Ersetze Platzhalter mit echten Pfaden
- Kompiliere erneut: `.\build.ps1`

### Schritt 4: Einreichen
- Sende `Vorlage/build/Bewerbung_Einzeln.pdf` ab
- **FERTIG!** 🎉

---

## 📂 Dateistruktur

```
Bewerbung/
│
├── Vorlage/                      # LaTeX Templates (nicht ändern!)
│   ├── anschreiben.tex           # Cover Letter Template
│   ├── cv.tex                    # CV Template
│   ├── anhang.tex                # Attachments Template
│   ├── Bewerbung_Einzeln.tex     # ← HAUPTDATEI (kombiniert alles)
│   ├── meta.tex                  # Zentrale Konfiguration
│   ├── *.sty                     # Styling-Dateien
│   └── build/                    # ← OUTPUT-VERZEICHNIS
│       ├── anschreiben.pdf       ✅
│       ├── cv.pdf                ✅
│       ├── anhang.pdf            ✅
│       └── Bewerbung_Einzeln.pdf ✅ ← DIES SENDEST DU AB!
│
├── Inhalt/                       # DEINE INHALTE (ändern!)
│   ├── BewerberInfos.tex         ✅ Persönliche Daten (FERTIG)
│   ├── Inhalt-Anschreiben.tex    ✅ Anschreiben (FERTIG)
│   ├── Inhalt-CV.tex             ✅ Lebenslauf (FERTIG)
│   └── Inhalt-Anlagen.tex        ⚠️  Zeugnisse (NOCH ANZUPASSEN)
│
├── Bsp-Bin/                      # Beispiel-Dateien
│   ├── picture.jpg               # Bewerbungsfoto (optional)
│   ├── Unterschrift.png          # Unterschrift (optional)
│   └── ZeugnisBsp                # Beispiel-Zeugnis
│
├── script/
│   └── texlive.sh                # Build-Skript Unix/Linux
│
├── build.ps1                     # ← Build-Skript Windows PowerShell
├── build.bat                     # ← Build-Skript Windows Batch
│
├── QUICKSTART.md                 # ← START HIER!
├── COMPLETE_GUIDE.md             # Ausführliche Dokumentation
├── BUILD_INSTRUCTIONS.md         # Build-Anleitung
│
└── README.md                     # Original-Template Info
```

---

## ✅ Checkliste vor dem Einreichen

- [ ] Ich habe `.\build.ps1` ausgeführt
- [ ] `Bewerbung_Einzeln.pdf` existiert in `Vorlage/build/`
- [ ] Die PDF öffnet sich und sieht gut aus
- [ ] Das Anschreiben hat die richtige Adresse (Hochschule Rhein-Waal)
- [ ] Der Lebenslauf ist aktuell
- [ ] Kontaktinformationen sind richtig
- [ ] (Optional) Zeugnisse are hinzugefügt und sehen gut aus

---

## 🎓 Das Endergebnis

Wenn alles fertig ist, hast du **eine einzige PDF-Datei**:

📄 **Bewerbung_Einzeln.pdf** mit:
- ✅ Professionelles Anschreiben
- ✅ Vollständiger Lebenslauf
- ✅ Alle deine Zeugnisse und Beilagen
- ✅ Korrekte Formatierung (DIN5008)
- ✅ Lesezeichen (Bookmarks) für einfaches Navigieren
- ✅ Richtige Seitennummerierung

Diese PDF ist **sofort versendbar!**

---

## 💡 Tipps & Tricks

**Foto hinzufügen:**
- Ersetze `Bsp-Bin/picture.jpg` mit deinem Bewerbungsfoto
- Seitenverhältnis 3:2 empfohlen

**Unterschrift hinzufügen:**
- Wenn vorhanden, bearbeite `BewerberInfos.tex`
- Ersetze Pfad zu `Unterschrift.png`

**Anschreiben ändern:**
- Bearbeite `Inhalt-Anschreiben.tex`
- Ändere Betreff, Adressat, Text wie nötig

**Lebenslauf anpassen:**
- Bearbeite `Inhalt-CV.tex`
- Füge neue Positionen oder Infos hinzu/weg

**Kompilierung optimieren:**
- `.\build.ps1 -CleanOnly` - Nur aufräumen (keine Kompilation)

---

## 📞 Noch Fragen?

Siehe **QUICKSTART.md** oder **COMPLETE_GUIDE.md** für weitere Details!

**Hauptdateien zum Merken:**
- 📝 `Inhalt/Inhalt-Anschreiben.tex` - Dein Anschreiben
- 📋 `Inhalt/Inhalt-CV.tex` - Dein Lebenslauf
- 📎 `Inhalt/Inhalt-Anlagen.tex` - Deine Zeugnisse
- 👤 `Inhalt/BewerberInfos.tex` - Deine Daten

🚀 **READY TO GO!**
