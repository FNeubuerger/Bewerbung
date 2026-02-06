# Build Instructions for Bewerbung Template

This application template includes multiple build options for different operating systems. No Docker or complex dependencies are required.

## Prerequisites

You need a working LaTeX installation:

### Windows
- Download and install **MiKTeX** from https://miktex.org/
  - Or **TeX Live** from https://tug.org/texlive/

### macOS
- Install via MacTeX: https://tug.org/mactex/

### Linux
- Ubuntu/Debian: `sudo apt-get install texlive-full`
- Fedora: `sudo dnf install texlive-scheme-full`
- Arch: `sudo pacman -S texlive-most`

## Building on Windows

### Option 1: PowerShell (Recommended)
```powershell
# Navigate to the Bewerbung directory
cd Bewerbung

# Run the build script
.\build.ps1

# Or for clean-only (remove auxiliary files without compiling)
.\build.ps1 -CleanOnly
```

### Option 2: Batch File
```cmd
# Navigate to the Bewerbung directory
cd Bewerbung

# Run the build script
build.bat
```

## Building on macOS/Linux

```bash
# Navigate to the Bewerbung directory
cd Bewerbung

# Run the build script
bash script/texlive.sh
```

## Build Output

- **PDFs** are generated in: `Vorlage/build/`
- Generated files:
  - `anschreiben.pdf` - Covering letter
  - `cv.pdf` - Curriculum Vitae
  - `anhang.pdf` - Attachments
  - `Bewerbung_Einzeln.pdf` - Single document compilation
  - `Bewerbung_Komplett.pdf` - Complete application

## What the Build Scripts Do

1. **Clean** - Removes all auxiliary LaTeX files (`.aux`, `.log`, etc.)
2. **Create** - Sets up the `build/` directory for output
3. **Compile** - Runs `pdflatex` twice on each document for proper references
4. **Report** - Shows compilation success/failure status

## Troubleshooting

### Missing LaTeX packages
If compilation fails with package errors:

**Windows (MiKTeX):**
- Open MiKTeX Console
- Go to "Packages" tab
- Search for and install missing packages

**Windows (TeX Live):**
```powershell
tlmgr install babel-german
tlmgr install koma-script
tlmgr install fontawesome5
```

**macOS/Linux:**
```bash
tlmgr install babel-german
tlmgr install koma-script
tlmgr install fontawesome5
```

### PDF not generated
- Check the build directory: `Vorlage/build/`
- Review compiler output for error messages
- Ensure all `.tex` files in the `Vorlage/` directory are valid

## Editing Your Application

### Main Content Files
- **Personal Information**: `Inhalt/BewerberInfos.tex`
- **Covering Letter**: `Inhalt/Inhalt-Anschreiben.tex`
- **CV**: `Inhalt/Inhalt-CV.tex`
- **Attachments**: `Inhalt/Inhalt-Anlagen.tex`

### Template Styles
- **Vorlage/Vorlage_Anschreiben.sty** - Covering letter style
- **Vorlage/Vorlage_Lebenslauf.sty** - CV style
- **Vorlage/GemeinsameDaten.sty** - Shared data/settings

## Notes

- The scripts run `pdflatex` twice to ensure proper cross-references and table of contents generation
- All auxiliary files are automatically cleaned before each build
- The build process is completely local - no cloud services or Docker required
