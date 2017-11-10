#!/bin/bash 
#
# move .pef files to ./raw subfolder
#
counter=0
dest="/media/bob2/4bcb9f3a-52d6-483e-b756-e6305b1e13b8/photo_collection/2017/"
for dir in ./*/
do
    dir=${dir%*/}
    mkdir $dest/$dir/raw
    for f in `find . -name "*.pef"`
    do
        mv $dest/$dir/raw/$f
        counter=$((counter+1))
    done
    echo "$counter .pef files were moved to $dest / $dir /raw/"
done







rsync -zarv --include="*/" --include="*.sh" --exclude="*" "$from" "$to/raw"

