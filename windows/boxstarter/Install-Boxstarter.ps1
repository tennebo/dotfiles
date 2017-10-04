<#
.SYNOPSIS
Install BoxStarter and Chocolatey.
#>

. { Invoke-WebRequest -UseBasicParsing http://boxstarter.org/bootstrapper.ps1 } | Invoke-Expression
Get-Boxstarter -Force
