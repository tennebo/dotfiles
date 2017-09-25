# Configure a clean Windows 10/2016 box to some sane settings,
# install Docker and development tools.

$Boxstarter.RebootOk=$true
$Boxstarter.NoPassword=$false
$Boxstarter.AutoLogin=$true

# Basic settings
Disable-UAC
Disable-InternetExplorerESC
Disable-BingSearch

# PowerShell
Set-ExecutionPolicy Unrestricted

# Let Control+D exit the shell
Set-PSReadlineOption -EditMode Emacs

# OneGet package manager manager
Get-PackageProvider -name chocolatey

# Explorer settings
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFileExtensions -EnableShowFullPathInTitleBar

# Enable containers (for Docker)
Enable-WindowsOptionalFeature -Online -FeatureName Containers -All

# Install Docker
Install-Module -Name DockerMsftProvider -Force
Install-Package -Name docker -ProviderName DockerMsftProvider -Force
if (Test-PendingReboot) { Invoke-Reboot }

# Avoid having to confirm each install
choco feature enable --name allowGlobalConfirmation

# Make sure we have Hyper-V enabled
cinst Microsoft-Hyper-V-All -source WindowsFeatures

# Chocolatey packages to install
cinst Atom
cinst baretail
cinst ConEmu
cinst fiddler4
cinst git
cinst jdk8
cinst lessmsi
cinst maven
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
