#
# Create a Chocolately package
#
param(
    [Parameter(
        Mandatory=$true,
        HelpMessage="Which folder to build from?")]
    [Alias("folder")]
    $packageFolder)

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

# Push the package
# TODO: We don't know the name of the nupkg file
# cpush (Join-Path $Boxstarter.LocalRepo $packageName)
