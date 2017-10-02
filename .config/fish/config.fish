
# Greeting
set -g --export fish_greeting ''

# Fix broken directory colors
set --export LS_COLORS "$LS_COLORS"'di=0;36;40:ow=34;36;40:'

# Vagrant needs this to run under WSL
set --export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS "1"

# CD path
set winhome /mnt/c/Users/$USER  # Assume the Windows and Linux users are called the same
set --export CDPATH . $HOME /mnt/c {$winhome} {$winhome}/OneDrive

