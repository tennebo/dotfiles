<#
.SYNOPSIS
Disable asking for 'shutdown reason' in Windows Server 2016.
#>

# Needed to process the -verbose flag
[CmdletBinding()]
Param()

$relPath = 'registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Reliability'
Write-Verbose 'Disabling asking for shutdown reason...'

if ( -Not (Test-Path $relPath)) {
    $parentPath = Split-Path $relPath -Parent
    $leaf       = Split-Path $relPath -Leaf
    Write-Verbose "Adding $leaf to $parentPath..."

    New-Item `
        -Path $parentPath `
        -Name $leaf `
        -Force
}

Write-Verbose 'Setting ShutdownReasonOn to false...'
Set-ItemProperty `
    -Path $relPath `
    -Name ShutdownReasonOn -Value 0

Write-Verbose 'All done.'
