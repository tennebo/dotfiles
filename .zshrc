# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

export UPDATE_ZSH_DAYS=17

ENABLE_CORRECTION="false"

COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files under VCS as dirty. This makes repository
# status check for large repositories much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Command execution time stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Which plugins to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

if [[ -a $ZSH/oh-my-zsh.sh ]]; then
    source $ZSH/oh-my-zsh.sh
fi

#
# User configuration
#

umask 022
unsetopt correct_all

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='vim'
fi

# Fix broken directory colors
LS_COLORS=${LS_COLORS}'di=0;36;40:ow=34;36;40:'
export LS_COLORS

# SSH keys
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Vagrant needs this to run under WSL
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"

# This assumes the Windows and Linux users are called the same
winhome=/mnt/c/Users/$USER
wintmp=${winhome}/AppData/Local/Temp

# CD path
cdpath=($HOME)
if [[ -a /mnt/c ]]; then
    cdpath=($cdpath /mnt/c/nxsrc $winhome/Github)
    cdpath=($cdpath /mnt/c $winhome)
    cdpath=($cdpath $winhome/OneDrive)
    cdpath=($cdpath $winhome/OneDrive\ -\ NUMERIX)
fi

if [[ -a $wintmp ]]; then
    # Used by Git for merge and diff operations
    export TMPDIR=$wintmp
fi

# CrossAsset Linux license
export NX_LICENSE_DIR=$HOME/license

