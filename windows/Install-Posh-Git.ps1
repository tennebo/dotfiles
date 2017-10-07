<#
.SYNOPSIS
Install the PowerShell module for Git.
#>

[CmdletBinding()]
Param()

# PowerShell script execution policy
Write-Verbose "Setting execution policy..."
$pol = Get-ExecutionPolicy
Set-ExecutionPolicy Unrestricted

try {
    # OneGet package manager manager
    Write-Verbose "Installing NuGet package provider..."
    Install-PackageProvider -Name NuGet
    Import-PackageProvider NuGet
    Install-Module posh-git
} finally {
    # Restore execution policy
    Write-Verbose("Restoring execution policy to $pol...")
    Set-ExecutionPolicy $pol
}

Write-Verbose "All done."
