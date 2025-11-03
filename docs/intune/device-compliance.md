# Device Compliance Export

Export device compliance and summarize results.

## At a glance
- Script: intune/Export-DeviceCompliance.ps1
- Output: ./output/device-compliance/*.json and a summary CSV

## Prerequisites
- [ ] Connected to Graph (see docs/auth.md)
- [ ] Scope DeviceManagementManagedDevices.Read.All granted
- [ ] Output folder exists or script creates it

## Steps
```powershell
.\intune\Export-DeviceCompliance.ps1 -OutDir ".\output"
```

## Validate
- [ ] Files written under ./output/device-compliance
- [ ] Summary CSV includes device id, user, state, and last seen

## Troubleshooting
- Empty output: confirm devices are enrolled and query filters
- 401/403: check Graph connection and scopes
- Encoding issues: ensure UTF-8 when writing files
