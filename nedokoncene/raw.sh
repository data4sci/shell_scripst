#!/bin/bash 
#
# move .pef files to ./raw subfolder
#
counter=0
mkdir ./raw
for f in `find . -name "*.pef"`
do
    mv $f ./raw/$f
    counter=$((counter+1))
done
echo "$counter .pef files were moved to ./raw subfolder"

exit 0


