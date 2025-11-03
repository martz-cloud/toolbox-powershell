# Auth

Connect to Microsoft Graph using device code or an app registration.

## At a glance
- Script: auth/Connect-GraphApp.ps1
- Modes: device code (delegated) or confidential client (app-only)
- Least privilege: request only the scopes you need

## Prerequisites
- [ ] App registration created if using app-only
- [ ] Client ID and tenant ID available
- [ ] Client secret stored securely (not in code)
- [ ] Required scopes identified

## Steps
1) Device code (delegated)
```powershell
Connect-MgGraph -Scopes "DeviceManagementConfiguration.Read.All,DeviceManagementManagedDevices.Read.All"
Select-MgProfile -Name "beta"
```
2) App-only (confidential client)
```powershell
.uth\Connect-GraphApp.ps1 -TenantId "<TENANT_ID>" -ClientId "<CLIENT_ID>" -ClientSecret (Read-Host -AsSecureString)
Select-MgProfile -Name "beta"
```

## Troubleshooting
- Login fails: check tenant restrictions or conditional access
- 403 errors: missing scope or role; grant and re-consent
- Throttling: add retry logic and backoff in loops
