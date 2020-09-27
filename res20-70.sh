#!/bin/bash
################################################################################
#                                                                              #
# resize all *.jpg files in working directory                                  #
#                                                                              #
################################################################################

for f in `find . -name "*.jpg"`
do
    convert $f -resize 20% -quality 70 $f.SMALL.JPG
    echo $f
done
