#!/bin/sh
#
# Configure Git to use P4Merge for diff and merge.

# Point to the P4Merge executable
p4m_exe=/Applications/p4merge.app/Contents/MacOS/p4merge 

git config --global diff.tool p4merge
git config --global merge.tool p4merge

git config --global mergetool.p4merge.path "$p4m_exe"
git config --global difftool.p4merge.path  "$p4m_exe"

# Avoid having to confirm each file pair
git config --global difftool.prompt false
