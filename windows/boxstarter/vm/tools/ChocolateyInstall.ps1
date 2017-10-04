# Configure a clean Windows 10 or 2016 box to some sane settings,
# install development tools.

$Boxstarter.RebootOk=$true
$Boxstarter.NoPassword=$false
$Boxstarter.AutoLogin=$true

# PowerShell (we cannot use Set-ExecutionPolicy in the Chocolatey runner)
Update-ExecutionPolicy Unrestricted
Enable-PSRemoting -Force
Enable-RemoteDesktop

# Chocolatey packages to install
cinst Atom
cinst baretail
cinst bginfo
cinst ConEmu
cinst git
cinst jdk8
cinst notepad2
cinst notepadplusplus
cinst openssh
cinst P4Merge
cinst procexp
cinst procmon
cinst rsync
cinst vim
cinst visualstudiocode
