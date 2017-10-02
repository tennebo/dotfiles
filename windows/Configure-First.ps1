<#
.SYNOPSIS
Basic settings for all development/test boxes.
#>

# PowerShell
Write-Host "Setting execution policy..."
Set-ExecutionPolicy Unrestricted
Set-PSReadlineOption -EditMode Emacs
Set-PSReadlineKeyHandler -Key Ctrl+LeftArrow ShellBackwardWord
Set-PSReadlineKeyHandler -Key Ctrl+RightArrow ShellForwardWord

# OneGet package manager manager
Write-Host "Installing Chocolatey and NuGet package providers..."
Install-PackageProvider -Name Chocolatey
Install-PackageProvider -Name NuGet

# There is no uninstall; this must be done manually:
#
# $pp = Get-PackageProvider -Name Chocolatey
# $pp.ProviderPath

Write-Host "All done."
