# Device Assignments Report

Create a CSV mapping devices to users, groups, and key policy states.

## At a glance
- Script: reports/DeviceAssignmentsReport.ps1
- Output: ./output/reports/DeviceAssignments.csv

## Prerequisites
- [ ] Connected to Graph (see docs/auth.md)
- [ ] Scopes for devices, users, and groups (read)
- [ ] Output folder path available

## Steps
```powershell
.eports\DeviceAssignmentsReport.ps1 -OutFile ".\output\reports\DeviceAssignments.csv"
```

## Columns
| Column | Description |
|---|---|
| DeviceId | Managed device id |
| DeviceName | Device display name |
| User | Primary user |
| Groups | Group display names (joined) |
| ComplianceState | Compliant, NonCompliant, Unknown |
| LastSeen | Timestamp from Graph |

## Troubleshooting
- Empty rows: ensure device-to-user association exists
- Group expansion slow: cache group id->name lookups
- Locale issues: force invariant culture for dates
