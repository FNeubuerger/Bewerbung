# ✅ Schnellstart: Deine Bewerbung erstellen

## In 3 Schritten zur fertigen Bewerbung

### Schritt 1: Kompilieren
```powershell
cd Bewerbung
.\build.ps1
```

Alternativ (Windows Batch):
```cmd
cd Bewerbung
build.bat
```

### Schritt 2: Überprüfen
Öffne deine fertige Bewerbung:
```
Bewerbung/Vorlage/build/Bewerbung_Einzeln.pdf
```

Diese PDF enthält:
- ✅ Dein Anschreiben
- ✅ Deinen Lebenslauf
- ✅ Deine Zeugnisse/Beilagen

### Schritt 3: Einreichen
Sende `Bewerbung_Einzeln.pdf` ein!

---

## 📋 Das ist bereits vorbereitet

| Datei | Status | Inhalt |
|-------|--------|--------|
| **BewerberInfos.tex** | ✅ Fertig | Deine persönlichen Daten |
| **Inhalt-Anschreiben.tex** | ✅ Fertig | Dein Anschreiben für Hochschule Rhein-Waal |
| **Inhalt-CV.tex** | ✅ Fertig | Dein vollständiger Lebenslauf |
| **Inhalt-Anlagen.tex** | ⚠️ Template | Deine Zeugnisse/Beilagen (muss angepasst werden) |

---

## 🔧 Was du noch tun musst

### Nur 1 Datei anpassen: `Inhalt/Inhalt-Anlagen.tex`

Diese Datei enthält deine Zeugnisse und Beilagen. Aktuell sind dort nur **Beispiel-Dateien** eingebunden.

**Um deine echten Zeugnisse einzubinden:**

1. Öffne: `Inhalt/Inhalt-Anlagen.tex`
2. Ersetze die Beispiel-Pfade mit deinen echten PDF-Dateien

**Beispiel:**

```tex
% VOR (Beispiel):
\includepdf[pages=-] {\pub ZeugnisBsp}

% NACH (Deine echte Datei):
\includepdf[pages=-] {../../Zeugnisse/Abitur_2013.pdf}
```

### Welche Zeugnisse solltest du hinzufügen?

- Abitur (Phoenix Gymnasium 2013)
- Bachelor Physik (TU Dortmund 2016)
- Master Physik (TU Dortmund 2018)
- Arbeitszeugnisse (FH Südwestfalen, Infineon)
- Zertifikate (Scout Leader Training 2023)
- Publikationsliste (optional)

**Tipp:** Du kannst Zeugnisse ganz einfach weglassen - entferne die Zeile `\includepdf` einfach.

---

## 📁 Deine Dateistruktur

```
Bewerbung/
├── Vorlage/
│   └── build/              ← Hier landen deine PDFs nach dem Kompilieren!
│       ├── anschreiben.pdf
│       ├── cv.pdf
│       ├── anhang.pdf
│       └── Bewerbung_Einzeln.pdf  ← DIESE SENDEST DU EIN! ✅
│
└── Inhalt/
    ├── BewerberInfos.tex           ✅ Vorbereitet
    ├── Inhalt-Anschreiben.tex      ✅ Vorbereitet  
    ├── Inhalt-CV.tex               ✅ Vorbereitet
    └── Inhalt-Anlagen.tex          ⚠️  Du musst Pfade anpassen
```

---

## 🚀 Workflow

1. **Kompilieren:**
   ```powershell
   .\build.ps1
   ```

2. **Prüfen:**
   - Öffne `Vorlage/build/Bewerbung_Einzeln.pdf`
   - Stimmt alles? ✅

3. **Beilagen anpassen (optional):**
   - Bearbeite `Inhalt/Inhalt-Anlagen.tex`
   - Ersetze die Beispiel-Pfade mit deinen echten Zeugnissen
   - Kompiliere erneut: `.\build.ps1`

4. **Einreichen:**
   - Sende `Bewerbung_Einzeln.pdf` ab! 🎉

---

## ❓ Häufige Fragen

**F: Muss ich alle Zeugnisse hinzufügen?**  
A: Nein, nur die wichtigsten. Du kannst Zeilen in `Inhalt-Anlagen.tex` einfach löschen.

**F: Kann ich das Anschreiben ändern?**  
A: Ja! Bearbeite `Inhalt/Inhalt-Anschreiben.tex`

**F: Kann ich den Lebenslauf ändern?**  
A: Ja! Bearbeite `Inhalt/Inhalt-CV.tex`

**F: Wo kommen die PDFs hin?**  
A: In `Vorlage/build/` nach dem Kompilieren

**F: Warum gibt es mehrere PDFs?**  
A: Damit du sie auch einzeln senden kannst, falls nötig. Aber in der Regel brauchst du nur `Bewerbung_Einzeln.pdf`

---

## ✨ Fertig!

Nach dem Kompilieren mit `.\build.ps1` hast du:

- ✅ `anschreiben.pdf` - Nur dein Anschreiben
- ✅ `cv.pdf` - Nur dein Lebenslauf
- ✅ `anhang.pdf` - Nur deine Zeugnisse
- ✅ `Bewerbung_Einzeln.pdf` - ALLES IN EINER DATEI ← **Das sendest du ab!**

Viel Erfolg bei der Bewerbung! 🚀
