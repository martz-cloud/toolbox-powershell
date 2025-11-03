# Toolbox - PowerShell

Reusable PowerShell scripts for Intune and Microsoft Graph.

## At a glance
- Scope: export, reporting, and small utilities
- Language: PowerShell 7+
- Auth: Microsoft Graph (delegated or app-only)

## Prerequisites
- [ ] PowerShell 7 or later installed
- [ ] Install-Module Microsoft.Graph
- [ ] App registration or user consent with least privilege
- [ ] Network access to Graph endpoints

## Quick start
```powershell
# Connect (device code auth)
Connect-MgGraph -Scopes "DeviceManagementConfiguration.Read.All,DeviceManagementManagedDevices.Read.All,Policy.Read.All"

# Or connect with an app (confidential client)
# See docs/auth.md for Connect-GraphApp.ps1 usage
```
