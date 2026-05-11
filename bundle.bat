@echo off
set "DEST=..\website\public\latex"

echo Bundling dependencies using recorder...
xelatex -interaction=batchmode -recorder main.tex

echo Parsing main.fls for all opened files...
powershell -Command "$fls = Get-Content main.fls; $files = $fls | Where-Object { $_ -match '^INPUT ' } | ForEach-Object { $_.Substring(6).Trim() } | Where-Object { $_ -match '\.(sty|cls|def|clo|cfg|fd|tex|fontspec)$' -and $_ -notmatch 'main\.aux' -and $_ -notmatch 'main\.fls' -and $_ -notmatch 'main\.log' } | ForEach-Object { Split-Path $_ -Leaf } | Select-Object -Unique; $files | Out-File -Encoding utf8 manifest_raw.txt"

echo Copying dependencies to %DEST%...
if not exist "%DEST%" mkdir "%DEST%"

powershell -Command "$files = Get-Content manifest_raw.txt; foreach ($f in $files) { if ($f.Trim() -eq '' -or (Test-Path \"$f\" -PathType Container)) { continue }; $path = kpsewhich $f.Trim(); if ($path) { Write-Host 'Copying' $f; Copy-Item $path -Destination '%DEST%\' -Force } else { Write-Host 'Warning: Could not find' $f } }; $finalFiles = Get-ChildItem '%DEST%\' -File | Where-Object { $_.Name -ne 'manifest.json' } | Select-Object -ExpandProperty Name; $finalFiles | ConvertTo-Json | Out-File -Encoding utf8 '%DEST%\manifest.json'"

echo.
echo Done. All recorded dependencies copied to %DEST% (Directories excluded)