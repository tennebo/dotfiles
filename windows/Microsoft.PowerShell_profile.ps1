# This file goes here: $profile

Import-Module posh-git

# Let Control+D to exit the shell
Set-PSReadlineOption -EditMode Emacs
Set-PSReadlineOption -HistoryNoDuplicates
Set-PSReadlineKeyHandler -Key Ctrl+LeftArrow ShellBackwardWord
Set-PSReadlineKeyHandler -Key Ctrl+RightArrow ShellForwardWord
