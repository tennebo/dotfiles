# Install some basic development software.

$Boxstarter.RebootOk=$true
$Boxstarter.NoPassword=$false
$Boxstarter.AutoLogin=$true

# Chocolatey packages to install
cinst Atom
cinst git
cinst notepad2
cinst notepadplusplus
cinst openssh
cinst P4Merge
cinst visualstudiocode

# Install any Windows updates last
Enable-MicrosoftUpdate
Install-WindowsUpdate -AcceptEula
