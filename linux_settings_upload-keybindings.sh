#!/bin/bash         
#

# keyboard shortcuts
# ==================
# 
# save to file
dconf dump /org/cinnamon/desktop/keybindings/ > keybindings-settings.conf

# git 

git add keybindings-settings.conf
git commit -m 'updated keyboard shortcuts'
git push
