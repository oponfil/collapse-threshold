# Build PDF (pdflatex + bibtex)
param(
    [string[]]$Targets = @("collapse_threshold_ru", "collapse_threshold_en")
)
$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot
$env:TMP = $PSScriptRoot
$env:TEMP = $PSScriptRoot

foreach ($base in $Targets) {
    $tex = "$base.tex"
    Write-Host "=== Build: $tex ===" -ForegroundColor Cyan
    Write-Host "1/4 pdflatex..."
    pdflatex -interaction=nonstopmode -halt-on-error -synctex=0 $tex
    if ($LASTEXITCODE -ne 0) { Write-Host "Error: pdflatex $tex" -ForegroundColor Red; exit 1 }
    Write-Host "2/4 bibtex..."
    bibtex $base
    if ($LASTEXITCODE -ne 0) { Write-Host "Error: bibtex $base" -ForegroundColor Red; exit 1 }
    Write-Host "3/4 pdflatex..."
    pdflatex -interaction=nonstopmode -halt-on-error -synctex=0 $tex
    Write-Host "4/4 pdflatex..."
    pdflatex -interaction=nonstopmode -halt-on-error -synctex=0 $tex
    Write-Host "=== Done: $base.pdf ===" -ForegroundColor Green
}
