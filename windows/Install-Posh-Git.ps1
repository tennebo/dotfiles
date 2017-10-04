<#
.SYNOPSIS
Install the PowerShell module for Git.
#>

# PowerShell
Write-Host "Setting execution policy..."
$pol = Get-ExecutionPolicy
Set-ExecutionPolicy Unrestricted

try {
    # OneGet package manager manager
    Write-Host "Installing NuGet package provider..."
    Install-PackageProvider -Name NuGet
    Import-PackageProvider NuGet
    Install-Module posh-git
} finally {
    # Restore execution policy
    Set-ExecutionPolicy $pol
}

Write-Host "All done."
