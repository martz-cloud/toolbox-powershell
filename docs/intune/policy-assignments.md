# Policy Assignments Export

Export assignments for Intune policies (configuration profiles, baselines, etc.).

## At a glance
- Script: intune/Export-PolicyAssignments.ps1
- Output: ./output/policy-assignments/*.json and a summary CSV

## Prerequisites
- [ ] Connected to Graph (see docs/auth.md)
- [ ] Scopes Policy.Read.All and DeviceManagementConfiguration.Read.All
- [ ] Output folder path available

## Steps
```powershell
.\intune\Export-PolicyAssignments.ps1 -OutDir ".\output"
```

## Validate
- [ ] JSON per policy and a summary CSV exist
- [ ] Group ids map to readable names

## Troubleshooting
- Missing policies: ensure correct Graph profile (beta vs v1.0)
- Group name lookups failing: add batching and retry on 429
- CSV columns misaligned: verify the header order in the script
