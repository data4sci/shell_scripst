#!/bin/bash 
#
# rotate wacom tablet
#
stylus=$(xsetwacom --list | grep -i "stylus" |  awk '{print $(NF-2)}')

rotation=$(xsetwacom --get "$stylus" Rotate) 


if [ $rotation == "none" ] ; then
   xsetwacom --set "$stylus" Rotate ccw
   echo "$stylus is ROTATED CCW."
else 
   xsetwacom --set "$stylus" Rotate none
   echo "$stylus is NOT ROTATED."
fi 
exit 0