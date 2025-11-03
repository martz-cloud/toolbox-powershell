# Utils

Small helper scripts used across exports and reports.

## At a glance
- Script: utils/Write-Log.ps1
- Purpose: consistent console and file logging

## Example
```powershell
. .\utils\Write-Log.ps1
Write-Log -Message "Starting export" -Level Info
```

## Tips
- [ ] Use -Verbose for detailed output when debugging
- [ ] Wrap Graph calls with try/catch and Write-Log on errors
- [ ] Add -OutDir parameter to scripts for flexible paths
