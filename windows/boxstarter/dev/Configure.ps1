# Configure a clean Windows 10/2016 box to some sane settings.

$Boxstarter.RebootOk=$true
$Boxstarter.NoPassword=$false
$Boxstarter.AutoLogin=$true

# Basic settings
Disable-InternetExplorerESC
Disable-BingSearch

# Explorer settings
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFileExtensions -EnableShowFullPathInTitleBar

# PowerShell (cannot use Set-ExecutionPolicy in the Chocolatey runner)
Update-ExecutionPolicy Unrestricted

Write-BoxstarterMessage 'Enabling Microsoft Update'
Enable-MicrosoftUpdate

Write-BoxstarterMessage 'Enabling Linux subsystem'
Enable-WindowsOptionalFeature -Online -All -FeatureName Microsoft-Windows-Subsystem-Linux

Write-BoxstarterMessage 'Enabling telnet client'
Enable-WindowsOptionalFeature -Online -All -FeatureName TelnetClient

# Avoid having to confirm each install
choco feature enable --name allowGlobalConfirmation
