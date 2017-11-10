#!/bin/bash 
#
# wacom - internal monitor
#
stylus=$(xsetwacom --list | grep -i "stylus" |  awk '{print $(NF-2)}')

xsetwacom --set "$stylus" MapToOutput eDP1

exit 0