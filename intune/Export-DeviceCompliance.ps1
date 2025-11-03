param(
  [Parameter()][string]$OutDir = "$(Join-Path $PSScriptRoot '..' 'output' 'device-compliance')"
)
Import-Module Microsoft.Graph -ErrorAction Stop
$null = New-Item -ItemType Directory -Force -Path $OutDir

Write-Host "Exporting device compliance (placeholder)…"
# TODO: Real query: Get-MgDeviceManagementDeviceCompliancePolicy / device statuses
"Replace with real export via Graph" | Out-File (Join-Path $OutDir "README.txt")
