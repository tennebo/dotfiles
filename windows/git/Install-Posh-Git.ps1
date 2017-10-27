<#
.SYNOPSIS
Install the PowerShell module for Git.

.DESCRIPTION
Must be run as Administrator.
#>

[CmdletBinding()]
Param()

# PowerShell script execution policy
Write-Verbose "Setting execution policy (process scope)..."
Set-ExecutionPolicy -Force -Scope Process Unrestricted

# OneGet package manager manager
Write-Verbose "Installing NuGet package provider..."
Install-PackageProvider -Name NuGet
Import-PackageProvider NuGet
Install-Module posh-git

Write-Verbose "All done."
