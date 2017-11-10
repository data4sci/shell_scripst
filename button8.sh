#!/bin/bash 
#
# wacom - external monitor
#
stylus=$(xsetwacom --list | grep -i "stylus" |  awk '{print $(NF-2)}')

xsetwacom --set "$stylus" MapToOutput HDMI1

exit 0