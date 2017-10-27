# Configure a Windows 10/2016 box to be used as a Docker host

$Boxstarter.RebootOk=$true
$Boxstarter.NoPassword=$false
$Boxstarter.AutoLogin=$true

# Enable containers
Write-BoxstarterMessage 'Enabling Containers'
Enable-WindowsOptionalFeature -Online -All -FeatureName Containers

# Enable Hyper-V
Write-BoxstarterMessage 'Enabling Hyper-V'
Enable-WindowsOptionalFeature -Online -All -FeatureName Microsoft-Hyper-V

# Docker
Write-BoxstarterMessage 'Installing Docker'

# Install the Microsoft Docker provider, then install Docker itself
Install-Module -Name DockerMsftProvider -Repository PSGallery -Force
Install-Package -Name docker -ProviderName DockerMsftProvider -Force

Install-PackageProvider -Name ContainerImage -Force

# PowerShell tab completion for Docker
Write-BoxstarterMessage 'Installing posh-docker module'
Install-Module -Name posh-docker

if (Test-PendingReboot) {
    Write-BoxstarterMessage 'Reboot will be required'
}
