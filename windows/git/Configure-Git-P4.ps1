<#
.SYNOPSIS
Configure Git to use P4Merge for diff and merge.

.DESCRIPTION
Must be run as Administrator.
#>

git config --global diff.tool p4merge
git config --global merge.tool p4merge

# Point to the P4Merge executable
git config --global mergetool.p4merge.path "C:/Program Files/Perforce/p4merge.exe"
git config --global difftool.p4merge.path  "C:/Program Files/Perforce/p4merge.exe"
git config --global difftool.prompt false

