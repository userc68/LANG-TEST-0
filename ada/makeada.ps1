param (
  [string]$adaFile
)

if (-Not (Test-Path $adaFile)) {
  Write-Host "Error: File '$adaFile' not found."
  exit 1
}

if (-Not ($adaFile -match '\.adb$')) {
  Write-Host "Error: '$adaFile' is not a valid Ada file (must have .adb extension)."
  exit 1
}

Write-Host "Compiling $adaFile..."
gnatmake $adaFile

if ($LASTEXITCODE -ne 0) {
  Write-Host "Error: Compilation failed."
  exit $LASTEXITCODE
}

$baseName = [System.IO.Path]::GetFileNameWithoutExtension($adaFile)

Write-Host "Cleaning up intermediate files..."
Remove-Item -ErrorAction SilentlyContinue "$baseName.o", "$baseName.ali"

Write-Host "Compilation successful. Executable: $baseName.exe"
