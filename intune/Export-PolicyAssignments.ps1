param(
  [Parameter()][string]$OutDir = "$(Join-Path $PSScriptRoot '..' 'output' 'policy-assignments')"
)
Import-Module Microsoft.Graph -ErrorAction Stop
$null = New-Item -ItemType Directory -Force -Path $OutDir

Write-Host "Exporting policy assignments (placeholder)…"
# TODO: Real query: Get-MgDeviceAppManagementMobileAppConfigurationAssignment / policy assignment graph
"Replace with real export via Graph" | Out-File (Join-Path $OutDir "README.txt")
