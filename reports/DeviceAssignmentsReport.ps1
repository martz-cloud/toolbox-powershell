$timestamp = Get-Date -Format "yyyyMMdd-HHmm"
$outDir = Join-Path $PSScriptRoot ".." "output" "reports"
New-Item -ItemType Directory -Force -Path $outDir | Out-Null
$outFile = Join-Path $outDir ("DeviceAssignments-" + $timestamp + ".csv")
"DeviceId,User,Compliance" | Out-File $outFile
"1234,example@example.com,Compliant" | Add-Content $outFile
Write-Host "Report written: $outFile"
