# PowerShell user profile. This file goes in one of these locations:
#
# A. Current User, All Hosts:     $profile.CurrentUserAllHosts
# B. Current User, Current Host:  $profile.CurrentUserCurrentHost
#
# For completeness, there are actually six(!) of these profiles:
#   https://blogs.technet.microsoft.com/heyscriptingguy/2012/05/21/understanding-the-six-powershell-profiles/

# Tab completion and colour-coding for Git
Import-Module posh-git

# Allow using Control+D to exit the shell
Set-PSReadlineOption -EditMode Emacs
Set-PSReadlineOption -HistoryNoDuplicates
Set-PSReadlineKeyHandler -Key Ctrl+LeftArrow ShellBackwardWord
Set-PSReadlineKeyHandler -Key Ctrl+RightArrow ShellForwardWord
