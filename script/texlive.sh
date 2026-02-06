#!/bin/bash

GIT_ROOT=$(git rev-parse --show-toplevel)
cd $GIT_ROOT

echo "removing auxillary tex files"
find . -type f \( -name "*.aux" -o -name "*.log" -o -name "*.out" -o -name "*.toc" -o -name "*.bbl" -o -name "*.blg" -o -name "*.synctex.gz" -o -name "*.fls" -o -name "*.fdb_latexmk" \) -delete

# Navigate to Vorlage directory
cd Vorlage

# Create build directory
echo "Creating build directory"
mkdir -p build

# Compile all documents
echo "Compiling LaTeX documents..."

DOCS=("anschreiben.tex" "cv.tex" "anhang.tex" "Bewerbung_Einzeln.tex" "Bewerbung_Komplett.tex")

for doc in "${DOCS[@]}"; do
    if [ -f "$doc" ]; then
        echo "  Compiling $doc..."
        pdflatex -interaction=nonstopmode -output-directory=build/ "$doc" > /dev/null 2>&1
        pdflatex -interaction=nonstopmode -output-directory=build/ "$doc" > /dev/null 2>&1
        
        pdf_name="${doc%.tex}.pdf"
        if [ -f "build/$pdf_name" ]; then
            echo "    ✓ $doc compiled successfully"
        else
            echo "    ✗ Error compiling $doc"
        fi
    else
        echo "  ⚠ $doc not found, skipping..."
    fi
done

echo "Build complete! PDFs are in ./build/"
