<# 
.SYNOPSIS
  Connect to Microsoft Graph using an app registration (confidential client).
.DESCRIPTION
  Replace placeholders with your own values or pass as parameters securely.
#>
param(
  [Parameter(Mandatory=$true)][string]$TenantId,
  [Parameter(Mandatory=$true)][string]$ClientId,
  [Parameter(Mandatory=$false)][securestring]$ClientSecret,
  [string[]]$Scopes = @('DeviceManagementConfiguration.Read.All','DeviceManagementManagedDevices.Read.All','Policy.Read.All')
)

Import-Module Microsoft.Graph -ErrorAction Stop

if ($null -eq $ClientSecret) {
  Write-Warning "No client secret supplied; falling back to device code flow."
  Connect-MgGraph -TenantId $TenantId -Scopes $Scopes -NoWelcome
} else {
  $BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($ClientSecret)
  $plain = [System.Runtime.InteropServices.Marshal]::PtrToStringBSTR($BSTR)
  $creds = [System.Management.Automation.PSCredential]::new($ClientId, (ConvertTo-SecureString $plain -AsPlainText -Force))
  Connect-MgGraph -TenantId $TenantId -ClientId $ClientId -ClientSecret $plain -NoWelcome -Scopes $Scopes
}

Select-MgProfile -Name beta
Write-Host "Connected to Graph (profile: beta)"
