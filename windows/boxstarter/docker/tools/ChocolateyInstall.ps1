# Configure a clean Windows 10/2016 box to be used as a Docker host

$Boxstarter.RebootOk=$true
$Boxstarter.NoPassword=$false
$Boxstarter.AutoLogin=$true

# Enable containers
Enable-WindowsOptionalFeature -Online -FeatureName Containers -All

# Install Docker
Install-Module -Name DockerMsftProvider -Force
Install-Package -Name docker -ProviderName DockerMsftProvider -Force
if (Test-PendingReboot) { Invoke-Reboot }

# Enable Hyper-V
choco install -y Microsoft-Hyper-V-All -source WindowsFeatures
if (Test-PendingReboot) { Invoke-Reboot }
