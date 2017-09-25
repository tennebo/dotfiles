# Configure a clean Windows 10 box to some sane settings.
# Also install some basic software.

$Boxstarter.RebootOk=$true
$Boxstarter.NoPassword=$false
$Boxstarter.AutoLogin=$true

# Basic settings
Disable-UAC
Disable-InternetExplorerESC
Disable-BingSearch

# PowerShell
Set-ExecutionPolicy RemoteSigned

# OneGet package manager manager
Get-PackageProvider -name chocolatey

# Explorer settings
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFileExtensions -EnableShowFullPathInTitleBar

# Avoid having to confirm each install
choco feature enable --name allowGlobalConfirmation

# Chocolatey packages to install
cinst Atom
cinst git
cinst notepad2
cinst notepadplusplus
cinst openssh
cinst P4Merge
cinst poshgit
cinst visualstudiocode

# Install any Windows updates last
Enable-MicrosoftUpdate
Install-WindowsUpdate -AcceptEula
