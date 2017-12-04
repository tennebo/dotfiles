<#
.SYNOPSIS
Copy the settings file to where VS Code expects it.
#>

# Needed to process the -verbose flag
[CmdletBinding()]
Param()

$src = "${PSScriptRoot}\settings.json"
$dst = "${env:USERPROFILE}\AppData\Roaming\Code\User\settings.json"

Write-Verbose "Installing $src into $dst"
Copy-Item ${src} ${dst}
