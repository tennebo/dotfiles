# Configure a clean Windows 10 or 2016 box to some sane settings,
# install development tools.

$Boxstarter.RebootOk=$true
$Boxstarter.NoPassword=$false
$Boxstarter.AutoLogin=$true

# Basic settings
Disable-InternetExplorerESC
Disable-BingSearch

# Explorer settings
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFileExtensions -EnableShowFullPathInTitleBar

# PowerShell (we cannot use Set-ExecutionPolicy in the Chocolatey runner)
Update-ExecutionPolicy Unrestricted
Enable-PSRemoting -Force
Enable-RemoteDesktop

# Avoid having to confirm each install
choco feature enable --name allowGlobalConfirmation

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
cinst poshgit
cinst procexp
cinst procmon
cinst rsync
cinst vim
cinst visualstudiocode

