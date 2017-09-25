# Configure a clean Windows 10 box to some sane settings.
# Also install some basic software.

$Boxstarter.RebootOk=$true
$Boxstarter.NoPassword=$false
$Boxstarter.AutoLogin=$true

# Basic settings
Disable-InternetExplorerESC
Disable-BingSearch

# Explorer settings
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFileExtensions -EnableShowFullPathInTitleBar

# PowerShell (cannot use Set-ExecutionPolicy in the Chocolatey runner)
Update-ExecutionPolicy RemoteSigned

# OneGet package manager manager
# Install-PackageProvider -Name Chocolatey
# Install-PackageProvider -Name NuGet

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
