#!/bin/bash 
#
# init wacom tablet
#
stylus=$(xsetwacom --list | grep -i "stylus" |  awk '{print $(NF-2)}')
pad=$(xsetwacom --list | grep -i "pad" |  awk '{print $(NF-2)}')


xsetwacom --set "$stylus" MapToOutput eDP1
xsetwacom --set "$stylus" Rotate none

xsetwacom --set "$pad" button 1 "key F6"
xsetwacom --set "$pad" button 2 "key F7"
xsetwacom --set "$pad" button 8 "key F8"
xsetwacom --set "$pad" button 9 "key F9"

echo "Ok --- all set on device $pad and $stylus."

exit 0





