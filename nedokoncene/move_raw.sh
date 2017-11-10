#!/bin/bash 
#
# move .pef files to /raw subfolder at external HD
#


#find $PWD -type f -name "*.pef" -print0 | xargs -0 -Imysongs mv -i raw /home/bob2/temp/raw 


find $PWD -type f -name "*.pef" -exec mv {} /home/bob2/temp/raw \;

echo "Ok - .pef files were moved. "

exit 0
