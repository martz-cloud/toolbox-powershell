param(
  [Parameter(Mandatory=$true)][string]$Message,
  [ValidateSet('INFO','WARN','ERROR')][string]$Level = 'INFO'
)
$ts = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
Write-Host "[$ts][$Level] $Message"
