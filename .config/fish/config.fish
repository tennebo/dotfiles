
# Greeting
set -g --export fish_greeting ''

# Fix broken directory colors
set --export LS_COLORS "$LS_COLORS"'di=0;36;40:ow=34;36;40:'

# CD path
set winhome /mnt/c/Users/$USER  # Assume the Windows and Linux users are called the same
set --export CDPATH . /mnt/c {$winhome} $HOME {$winhome}/OneDrive

