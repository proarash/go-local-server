$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

New-Item -ItemType Directory -Force out | Out-Null
go build -trimpath -ldflags "-s -w" -o out/gserver.exe .
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
Write-Host "Built out/gserver.exe"
