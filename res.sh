#!/bin/bash
################################################################################
#                                                                              #
# resize all *.jpg files in working directory                                  #
#                                                                              #
################################################################################

for f in `find . -name "*.jpg"`
do
    echo $f
    convert $f -resize 33% -quality 87 $f.SMALL.JPG
done
