# Toolbox – PowerShell

Reusable PowerShell scripts for Intune, Entra ID (Microsoft Graph), and basic reporting.  
**All configuration uses placeholders** like `<TENANT_ID>`, `<CLIENT_ID>`, `<SCOPES>` — replace with your own.

## Contents
```
/auth/
  Connect-GraphApp.ps1
/intune/
  Export-DeviceCompliance.ps1
  Export-PolicyAssignments.ps1
/reports/
  DeviceAssignmentsReport.ps1
/utils/
  Write-Log.ps1
```

## Prereqs
- PowerShell 7+ recommended
- Microsoft.Graph modules (`Install-Module Microsoft.Graph`)
- App registration with least-privilege scopes

## Example
```powershell
. ./auth/Connect-GraphApp.ps1 -TenantId '<TENANT_ID>' -ClientId '<CLIENT_ID>' -ClientSecret (Read-Host -AsSecureString)
. ./intune/Export-DeviceCompliance.ps1 -OutDir './output'
```
