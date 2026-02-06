@echo off
REM Build script for Bewerbung template - Windows Batch version
REM Usage: build.bat

setlocal enabledelayedexpansion

echo.
echo ================================
echo Bewerbung Template Build Script
echo ================================
echo.

REM Get the directory where this script is located
set SCRIPT_DIR=%~dp0
set BUILD_DIR=%SCRIPT_DIR%Vorlage\build
set VORLAGE_DIR=%SCRIPT_DIR%Vorlage

REM Clean auxiliary files
echo Cleaning auxiliary LaTeX files...

if exist "%BUILD_DIR%" (
    rmdir /s /q "%BUILD_DIR%"
    echo   [OK] Removed build directory
)

REM Remove auxiliary files
for /r "%VORLAGE_DIR%" %%F in (*.aux *.log *.out *.toc *.bbl *.blg *.synctex.gz *.fls *.fdb_latexmk *.dvi *.ps) do (
    del "%%F" 2>nul
)
echo   [OK] Cleaned auxiliary files

REM Create build directory
echo.
echo Creating build directory...
if not exist "%BUILD_DIR%" mkdir "%BUILD_DIR%"
echo   [OK] Build directory created

REM Compile documents
echo.
echo Compiling LaTeX documents...
cd /d "%VORLAGE_DIR%"

set DOCS=anschreiben.tex cv.tex anhang.tex Bewerbung_Einzeln.tex Bewerbung_Komplett.tex
set FAILED=0
set SUCCESS=0

for %%D in (%DOCS%) do (
    if exist "%%D" (
        echo   Compiling %%D...
        pdflatex -interaction=nonstopmode -output-directory=build/ "%%D" >nul 2>&1
        pdflatex -interaction=nonstopmode -output-directory=build/ "%%D" >nul 2>&1
        
        set "PDFNAME=%%D"
        set "PDFNAME=!PDFNAME:.tex=.pdf!"
        
        if exist "build\!PDFNAME!" (
            echo     [OK] Successfully compiled %%D
            set /a SUCCESS+=1
        ) else (
            echo     [ERROR] Failed to compile %%D
            set /a FAILED+=1
        )
    ) else (
        echo   [WARN] %%D not found, skipping...
    )
)

REM Summary
echo.
echo ================================
echo Build Summary
echo ================================
echo   Successfully compiled: %SUCCESS%
echo   Failed: %FAILED%
echo   Output directory: %BUILD_DIR%
echo.

if %FAILED% equ 0 (
    echo Build complete!
) else (
    echo Build completed with errors.
)

REM Pause to see output
pause
