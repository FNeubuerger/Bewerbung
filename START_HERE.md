# 🎓 Deine Bewerbung - Komplett vorbereitet!

## 🚀 SCHNELLSTART (30 Sekunden)

```powershell
cd Bewerbung
.\build.ps1
```

→ Deine fertige Bewerbung ist in: `Vorlage/build/Bewerbung_Einzeln.pdf`

---

## 📚 Dokumentation - Wähle deine Kategorie:

### 👤 Ich bin neu hier - Was ist das?
→ Lies: **STATUS.md** (Kompletter Überblick)

### ⚡ Ich will schnell anfangen
→ Lies: **QUICKSTART.md** (3 einfache Schritte)

### 🔧 Ich brauche technische Details
→ Lies: **COMPLETE_GUIDE.md** (Alles im Detail)

### 🖥️ Ich will wissen wie man baut/kompiliert
→ Lies: **BUILD_INSTRUCTIONS.md** (Build-Anleitung)

---

## ✅ Was ist bereits fertig?

| Element | Status | Datei |
|---------|--------|-------|
| **Persönliche Daten** | ✅ FERTIG | `Inhalt/BewerberInfos.tex` |
| **Anschreiben** | ✅ FERTIG | `Inhalt/Inhalt-Anschreiben.tex` |
| **Lebenslauf** | ✅ FERTIG | `Inhalt/Inhalt-CV.tex` |
| **Zeugnisse Template** | ✅ BEREIT | `Inhalt/Inhalt-Anlagen.tex` |
| **Build-Skripte** | ✅ FERTIG | `build.ps1`, `build.bat`, `script/texlive.sh` |

---

## 📄 Welche PDFs werden generiert?

Nach dem Ausführen von `.\build.ps1` erhältst du:

```
Vorlage/build/
├── anschreiben.pdf              (nur Anschreiben)
├── cv.pdf                       (nur Lebenslauf)
├── anhang.pdf                   (nur Zeugnisse)
├── Bewerbung_Einzeln.pdf        ← DIESE SENDEST DU AB! ✅
└── Bewerbung_Komplett.pdf       (Alternative Variante)
```

**Du brauchst nur:** `Bewerbung_Einzeln.pdf`

---

## 📋 Was du noch tun musst (eine Datei!)

### 1️⃣ Optional: Zeugnisse hinzufügen

Bearbeite: `Inhalt/Inhalt-Anlagen.tex`

Ersetze die Beispiel-PDFs mit deinen echten Zeugnissen. Die Datei enthält bereits Vorlagen für:
- Abitur-Zeugnis
- Bachelor-Zeugnis  
- Master-Zeugnis
- Arbeitszeugnisse
- Zertifikate
- Publikationen

→ Siehe **Inhalt-Anlagen_TEMPLATE.tex** für detaillierte Anleitung

---

## 🎯 3-Schritte Plan

### Schritt 1: Kompilieren
```powershell
cd Bewerbung
.\build.ps1
```

### Schritt 2: Überprüfen
- Öffne: `Vorlage/build/Bewerbung_Einzeln.pdf`
- Stimmt alles? ✅

### Schritt 3: Zeugnisse (optional)
- Bearbeite: `Inhalt/Inhalt-Anlagen.tex`
- Kompiliere erneut: `.\build.ps1`
- Prüfe: `Vorlage/build/Bewerbung_Einzeln.pdf`

---

## 📁 Dateistruktur (Kurz)

```
Bewerbung/
├── Inhalt/              ← DEINE DATEIEN (kannst du ändern)
│   ├── BewerberInfos.tex
│   ├── Inhalt-Anschreiben.tex
│   ├── Inhalt-CV.tex
│   └── Inhalt-Anlagen.tex
│
├── Vorlage/             ← VORLAGEN (nicht ändern!)
│   ├── *.tex            (Template-Dateien)
│   ├── *.sty            (Styling)
│   └── build/           ← DEINE PDFS
│       └── Bewerbung_Einzeln.pdf ✅
│
├── build.ps1            ← Windows PowerShell
├── build.bat            ← Windows Batch
├── script/texlive.sh    ← Unix/Linux
│
└── *.md                 ← Dokumentationen
    ├── QUICKSTART.md
    ├── COMPLETE_GUIDE.md
    ├── BUILD_INSTRUCTIONS.md
    └── STATUS.md
```

---

## 🖥️ Windows/Mac/Linux

**Windows PowerShell:**
```powershell
.\build.ps1
```

**Windows Batch:**
```cmd
build.bat
```

**macOS/Linux:**
```bash
bash script/texlive.sh
```

---

## ✨ Das Endergebnis

Eine einzige, professionelle PDF-Datei:
```
Bewerbung_Einzeln.pdf
├── Anschreiben (formatiert nach DIN 5008)
├── Lebenslauf (mit Foto und Infos)
└── Deine Zeugnisse (mit Lesezeichen)
```

**Perfekt zum Absenden!** 🚀

---

## 🎓 Inhalt deiner Bewerbung

### Anschreiben
- ✅ Adresse: Hochschule Rhein-Waal
- ✅ Betreff: Professor/in für ML & Data Science
- ✅ Deine Promotion & Forschung
- ✅ Deine Lehrerfahrung
- ✅ Deine Industrieerfahrung (Infineon)

### Lebenslauf
- ✅ Persönliche Daten (Name, Geburt, Adresse, Kontakt)
- ✅ Promotion (PZAI Darmstadt, 2020-heute)
- ✅ Master (TU Dortmund 2018, Physik)
- ✅ Bachelor (TU Dortmund 2016, Physik)
- ✅ Abitur (Phoenix Gymnasium 2013)
- ✅ Berufliche Erfahrung (FH, Infineon, Tutorium)
- ✅ Kompetenzen (Python, TensorFlow, SQL, etc.)
- ✅ Sonstige (DPSG, Baseball, Zertifikate)

### Beilagen (zu ergänzen)
- [ ] Zeugnisse (Schulische & Akademische)
- [ ] Arbeitszeugnisse
- [ ] Zertifikate
- [ ] Publikationen (optional)

---

## 📖 Weitere Ressourcen

| Datei | Zweck |
|-------|--------|
| **QUICKSTART.md** | Schnell anfangen (3 Schritte) |
| **STATUS.md** | Kompletter Status & Überblick |
| **COMPLETE_GUIDE.md** | Ausführliche Erklärung |
| **BUILD_INSTRUCTIONS.md** | Build-Prozess verstehen |
| **Inhalt-Anlagen_TEMPLATE.tex** | Template für Zeugnisse |

---

## 💡 Häufige Fragen

**F: Wo finde ich meine fertige Bewerbung?**
A: In `Vorlage/build/Bewerbung_Einzeln.pdf`

**F: Muss ich etwas installieren?**
A: Nein, nur LaTeX (MiKTeX, TeX Live, oder MacTeX)

**F: Kann ich das Anschreiben ändern?**
A: Ja, bearbeite `Inhalt/Inhalt-Anschreiben.tex`

**F: Kann ich den Lebenslauf ändern?**
A: Ja, bearbeite `Inhalt/Inhalt-CV.tex`

**F: Wie füge ich Zeugnisse ein?**
A: Bearbeite `Inhalt/Inhalt-Anlagen.tex` - Template ist dabei!

**F: Was ist wenn der Build fehlschlägt?**
A: Siehe `BUILD_INSTRUCTIONS.md` - Troubleshooting Sektion

---

## 🚀 Los geht's!

```powershell
# 1. Navigate to your Bewerbung folder
cd Bewerbung

# 2. Build your application
.\build.ps1

# 3. Find your PDF
# → Vorlage/build/Bewerbung_Einzeln.pdf

# 4. Send it in!
# 🎉 Done!
```

---

## 📝 Letzte Checkliste

- [ ] LaTeX installiert? (MiKTeX / TeX Live / MacTeX)
- [ ] `.\build.ps1` ausgeführt?
- [ ] `Bewerbung_Einzeln.pdf` öffnet sich?
- [ ] Anschreiben & Lebenslauf sieht gut aus?
- [ ] (Optional) Zeugnisse eingefügt?
- [ ] Bereit zum Abschicken?

---

## 🎉 Viel Erfolg bei der Bewerbung!

Wenn noch Fragen sind, schau in die ausführlicheren Guides oder experimentiere rum - die Vorlage ist robust und verzeiht Fehler!

**Happy applying!** 🚀

---

**Dokumentation erstellt:** Februar 2026  
**Template:** Stefanqn/Bewerbung (GitHub)  
**Angepasst für:** Dr. Felix Neubürger - Bewerbung Hochschule Rhein-Waal
