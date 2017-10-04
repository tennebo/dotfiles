<#
.SYNOPSIS
Basic settings for all development/test boxes.
#>

# PowerShell
Write-Host "Setting execution policy..."
Set-ExecutionPolicy Unrestricted

# PowerShell module repository
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

# OneGet meta-package manager
Write-Host "Installing Chocolatey and NuGet package providers..."
Install-PackageProvider -Name Chocolatey
Install-PackageProvider -Name NuGet

# There is no package provider uninstall; this must be done manually:
#
# $pp = Get-PackageProvider -Name Chocolatey
# $pp.ProviderPath

Write-Host "All done."
