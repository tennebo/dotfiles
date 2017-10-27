<#
.SYNOPSIS
Basic settings for all development/test boxes.

.DESCRIPTION
Must be run as Administrator.
#>

[CmdletBinding()]
Param()

# PowerShell
Write-Verbose "Setting execution policy..."
Set-ExecutionPolicy -Force -Scope Process Unrestricted
Set-ExecutionPolicy -Force -Scope LocalMachine Unrestricted

# PowerShell module repository
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

# OneGet meta-package manager
Write-Verbose "Installing Chocolatey and NuGet package providers..."
Install-PackageProvider -Force -Name Chocolatey
Install-PackageProvider -Force -Name NuGet

# There is no package provider uninstall; this must be done manually:
#
# $pp = Get-PackageProvider -Name Chocolatey
# $pp.ProviderPath

Write-Verbose "All done."
