#!/bin/bash         
#

# git - stáhnout poslední verzi keybindings-settings.conf

git pull 

# keyboard shortcuts
# ==================

dconf load /org/cinnamon/desktop/keybindings/ < keybindings-settings.conf
