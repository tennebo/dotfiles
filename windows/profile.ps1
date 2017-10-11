# PowerShell user profile. This file goes in one of these locations:
#
# A. Current User, All Hosts:     $profile.CurrentUserAllHosts
# B. Current User, Current Host:  $profile.CurrentUserCurrentHost
#
# For completeness, there are actually six(!) of these profiles:
#   https://blogs.technet.microsoft.com/heyscriptingguy/2012/05/21/understanding-the-six-powershell-profiles/

function Safe-Import-Module($modulename) {
    if (Get-Module -ListAvailable -Name $modulename) {
        Write-Verbose "Importing $modulename"
        Import-Module $modulename
    } else {
        Write-Warning("$modulename not installed; try: Install-Module $modulename")
        Write-Warning("The current profile file is " + $MyInvocation.ScriptName)
    }
}

# Tab completion and colour-coding
Safe-Import-Module "posh-git"
Safe-Import-Module "posh-docker"

# Allow using Control+D to exit the shell
Set-PSReadlineOption -EditMode Emacs
Set-PSReadlineOption -HistoryNoDuplicates
Set-PSReadlineKeyHandler -Key Ctrl+LeftArrow ShellBackwardWord
Set-PSReadlineKeyHandler -Key Ctrl+RightArrow ShellForwardWord
