# Clean build script for Bewerbung template
# PowerShell version for Windows

Write-Host ""
Write-Host "================================"
Write-Host "Bewerbung Template Build Script"
Write-Host "================================"

# Get script directory
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$buildDir = Join-Path -Path $scriptDir -ChildPath "Vorlage" | Join-Path -ChildPath "build"
$vorlageDir = Join-Path -Path $scriptDir -ChildPath "Vorlage"

# Clean auxiliary files
Write-Host ""
Write-Host "Cleaning auxiliary LaTeX files..."

# Remove build directory
if (Test-Path $buildDir) {
    Remove-Item -Path $buildDir -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "OK: Removed build directory"
}

# Remove auxiliary files in Vorlage directory
$auxPatterns = @("*.aux", "*.log", "*.out", "*.toc", "*.bbl", "*.blg", "*.synctex.gz", "*.fls", "*.fdb_latexmk", "*.dvi", "*.ps")
foreach ($pattern in $auxPatterns) {
    Get-ChildItem -Path $vorlageDir -Filter $pattern -ErrorAction SilentlyContinue | Remove-Item -Force -ErrorAction SilentlyContinue
}
Write-Host "OK: Cleaned auxiliary files"

# Remove auxiliary files recursively in Inhalt directory
$inhaltDir = Join-Path -Path $scriptDir -ChildPath "Inhalt"
if (Test-Path $inhaltDir) {
    foreach ($pattern in $auxPatterns) {
        Get-ChildItem -Path $inhaltDir -Filter $pattern -Recurse -ErrorAction SilentlyContinue | Remove-Item -Force -ErrorAction SilentlyContinue
    }
}

# Create build directory
Write-Host ""
Write-Host "Creating build directory..."
New-Item -ItemType Directory -Path $buildDir -ErrorAction SilentlyContinue | Out-Null
Write-Host "OK: Build directory created"

# Compile documents
Write-Host ""
Write-Host "Compiling LaTeX documents..."

Push-Location $vorlageDir

$documents = @(
    "anschreiben.tex",
    "anhang.tex",
    "Bewerbung_Einzeln.tex",
    "Bewerbung_Komplett.tex"
)

$failedDocs = @()
$successDocs = @()

foreach ($doc in $documents) {
    if (-not (Test-Path $doc)) {
        Write-Host "SKIP: $doc not found"
        continue
    }
    
    Write-Host "Compiling: $doc"
    
    # Run pdflatex twice for proper references
    pdflatex -interaction=nonstopmode -output-directory=build/ $doc 2>&1 | Out-Null
    pdflatex -interaction=nonstopmode -output-directory=build/ $doc 2>&1 | Out-Null
    
    $pdfName = $doc -replace "\.tex$", ".pdf"
    $pdfFile = Join-Path -Path $buildDir -ChildPath $pdfName
    
    if (Test-Path $pdfFile) {
        Write-Host "  OK: $doc"
        $successDocs += $doc
    } else {
        Write-Host "  ERROR: $doc"
        $failedDocs += $doc
    }
}

Pop-Location

# Compile CV from CV_Felix_English folder (parent directory)
Write-Host ""
Write-Host "Setting up CV from CV_Felix_English..."
$cvEnglishDir = Join-Path -Path $scriptDir -ChildPath "..\CV_Felix_English" | Resolve-Path
$cvPdfSource = Join-Path -Path $cvEnglishDir -ChildPath "cv-llt.pdf"
$cvPdfDest = Join-Path -Path $buildDir -ChildPath "cv.pdf"

if (Test-Path (Join-Path -Path $cvEnglishDir -ChildPath "cv-llt.tex")) {
    Push-Location $cvEnglishDir
    
    # Try XeLaTeX first (best for fonts)
    Write-Host "  Attempting to compile with XeLaTeX..."
    xelatex -interaction=nonstopmode -output-directory=. cv-llt.tex 2>&1 | Out-Null
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "    XeLaTeX: OK (first pass)"
        # Run bibtex for bibliography
        bibtex cv-llt 2>&1 | Out-Null
        # Recompile with XeLaTeX twice more for proper bibliography integration
        xelatex -interaction=nonstopmode -output-directory=. cv-llt.tex 2>&1 | Out-Null
        xelatex -interaction=nonstopmode -output-directory=. cv-llt.tex 2>&1 | Out-Null
    } else {
        # Try LuaLaTeX
        Write-Host "  Attempting to compile with LuaLaTeX..."
        lualatex -interaction=nonstopmode -output-directory=. cv-llt.tex 2>&1 | Out-Null
        
        if ($LASTEXITCODE -eq 0) {
            Write-Host "    LuaLaTeX: OK (first pass)"
            # Run bibtex for bibliography
            bibtex cv-llt 2>&1 | Out-Null
            # Recompile with LuaLaTeX twice more for proper bibliography integration
            lualatex -interaction=nonstopmode -output-directory=. cv-llt.tex 2>&1 | Out-Null
            lualatex -interaction=nonstopmode -output-directory=. cv-llt.tex 2>&1 | Out-Null
        } else {
            # Fall back to pdflatex
            Write-Host "  Attempting to compile with pdfLaTeX..."
            pdflatex -interaction=nonstopmode -output-directory=. cv-llt.tex 2>&1 | Out-Null
            
            if ($LASTEXITCODE -eq 0) {
                Write-Host "    pdfLaTeX: OK (first pass)"
                # Run bibtex for bibliography
                bibtex cv-llt 2>&1 | Out-Null
                # Recompile with pdfLaTeX twice more for proper bibliography integration
                pdflatex -interaction=nonstopmode -output-directory=. cv-llt.tex 2>&1 | Out-Null
                pdflatex -interaction=nonstopmode -output-directory=. cv-llt.tex 2>&1 | Out-Null
            }
        }
    }
    
    Pop-Location
    
    if (Test-Path $cvPdfSource) {
        Copy-Item -Path $cvPdfSource -Destination $cvPdfDest -Force
        Write-Host "  OK: cv-llt.pdf compiled and copied to build/cv.pdf"
        $successDocs += "cv-llt.tex"
    } else {
        Write-Host "  ERROR: cv-llt.pdf could not be generated"
        $failedDocs += "cv-llt.tex"
    }
} else {
    Write-Host "  ERROR: cv-llt.tex not found in CV_Felix_English"
}

# Create final output directory
$finalOutputDir = Join-Path -Path $scriptDir -ChildPath "Fertiges-PDF"
if (-not (Test-Path $finalOutputDir)) {
    New-Item -ItemType Directory -Path $finalOutputDir | Out-Null
    Write-Host "Created output directory: $finalOutputDir"
}

# Copy final PDFs to Fertiges-PDF directory
$finalPDFs = @(
    "Bewerbung_Einzeln.pdf",
    "Bewerbung_Komplett.pdf",
    "anschreiben.pdf",
    "cv.pdf",
    "anhang.pdf"
)

Write-Host ""
Write-Host "Copying final PDFs to Fertiges-PDF directory..."
foreach ($pdf in $finalPDFs) {
    $sourcePath = Join-Path -Path $buildDir -ChildPath $pdf
    $destPath = Join-Path -Path $finalOutputDir -ChildPath $pdf
    
    if (Test-Path $sourcePath) {
        Copy-Item -Path $sourcePath -Destination $destPath -Force
        Write-Host "  Copied: $pdf"
    }
}

# Summary
Write-Host ""
Write-Host "================================"
Write-Host "Build Summary"
Write-Host "================================"

if ($successDocs.Count -gt 0) {
    Write-Host ""
    Write-Host "Successfully compiled:"
    foreach ($doc in $successDocs) {
        Write-Host "  OK: $doc"
    }
}

if ($failedDocs.Count -gt 0) {
    Write-Host ""
    Write-Host "Failed to compile:"
    foreach ($doc in $failedDocs) {
        Write-Host "  ERROR: $doc"
    }
}

Write-Host ""
Write-Host "Output directory: $buildDir"
Write-Host "Final PDFs: $finalOutputDir"
Write-Host "Build complete!"
Write-Host ""

