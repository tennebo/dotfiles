<#
.SYNOPSIS
Create a Chocolately package.
#>

param(
    [Parameter(
        Mandatory=$true,
        HelpMessage="Which folder to build from?")]
    [Alias("folder")]
    $packageFolder)

if (Test-Path variable:global:BoxStarter) {
    Write-Verbose("Boxstarter: " + $Boxstarter.LocalRepo)
} else {
    Write-Host "Please Import-Module Boxstarter.Chocolatey"
    exit 1
}

# Find the package name from the nuspec file
$dir = Join-Path $PSScriptRoot $packageFolder
$nuspec = Get-ChildItem $dir -Name *.nuspec
$packageName = [System.IO.Path]::GetFileNameWithoutExtension($nuspec)
Write-Host Using package name $packageName

# Cleanup the old, if any, from the local Boxstarter repo
$rip = Join-Path $Boxstarter.LocalRepo $packageName
if (Test-Path $rip) {
    Write-Host Removing previous $rip
    Remove-Item -Recurse -Path $rip
}

# This will copy the package source to the local Boxstarter repo
Write-Host Using nuspec from $dir
New-BoxstarterPackage `
    -Name $packageName `
    -path $dir

# This will build a Nuget package in the local Boxstarter repo
Invoke-BoxstarterBuild -name $packageName

# Push the package to one of:
# o chocolatey.org
# o myget.org
# o nuget.org
#
# Note that we don't know the name of the generated nupkg file
$localrepo = $Boxstarter.LocalRepo
$remoterepo = "https://www.myget.org/F/boxstarter"
Write-Host 'To publish:'
Write-Host "cpush -source $remoterepo $localrepo\<package-name> "

