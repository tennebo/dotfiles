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
plugins=(aws docker gitfast jira)

if [[ -a $ZSH/oh-my-zsh.sh ]]; then
    source $ZSH/oh-my-zsh.sh
fi

umask 022
unsetopt correct_all

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Fix broken directory colors
LS_COLORS=${LS_COLORS}'di=0;36;40:ow=34;36;40:'
export LS_COLORS

# SSH keys
export SSH_KEY_PATH="~/.ssh/id_rsa"

# This assumes the Windows and Linux users are called the same
winhome=/mnt/c/Users/$USER
wintmp=${winhome}/AppData/Local/Temp

# SQL Server tools
path=($path /opt/mssql-tools/bin)

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

# Kubernetes
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

# AWS
AWS_REGION=us-east-1
autoload bashcompinit && bashcompinit
[[ /usr/local/bin/aws_completer ]] && complete -C '/usr/local/bin/aws_completer' aws

