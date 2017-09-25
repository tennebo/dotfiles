# Configure a clean Windows 10/2016 box to some sane settings,
# install Docker and development tools.

$Boxstarter.RebootOk=$true
$Boxstarter.NoPassword=$false
$Boxstarter.AutoLogin=$true

# Basic settings
Disable-InternetExplorerESC
Disable-BingSearch

# Explorer settings
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFileExtensions -EnableShowFullPathInTitleBar

# PowerShell (cannot use Set-ExecutionPolicy in the Chocolatey runner)
Update-ExecutionPolicy Unrestricted

# Let Control+D exit the shell
Set-PSReadlineOption -EditMode Emacs
Set-PSReadlineKeyHandler -Key Ctrl+LeftArrow ShellBackwardWord
Set-PSReadlineKeyHandler -Key Ctrl+RightArrow ShellForwardWord

# OneGet package manager manager
Install-PackageProvider -Name Chocolatey
Install-PackageProvider -Name NuGet

# Avoid having to confirm each install
choco feature enable --name allowGlobalConfirmation

cinst TelnetClient -source windowsFeatures

# Chocolatey packages to install
cinst Atom
cinst baretail
cinst ConEmu
cinst fiddler4
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
cinst vagrant
cinst vim
cinst visualstudiocode

# Install any Windows updates last
Enable-MicrosoftUpdate
Install-WindowsUpdate -AcceptEula
