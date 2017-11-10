#!/bin/bash 
#
# move *.pef files recursively
#
# ~/script/raw_rsync.sh /media/bob2/DATA-ASUS/Photos/2017/ /media/bob2/4bcb9f3a-52d6-483e-b756-e6305b1e13b8/photo_collection/2017/
#

from=$1
to=$2

rsync -zav --progress --remove-source-files --include="*/" --include="*.pef" --exclude="*" "$from" "$to"

exit 0
