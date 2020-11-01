#!/bin/bash

for f in `find . -name "*.jpg"`
do
   convert -crop 2000x1000+0+0 -gravity Center "$f" $f.crop.jpg
done
