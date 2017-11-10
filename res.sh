for f in `find . -name "*.jpg"`
do
    convert $f -resize 33% -quality 87 $f.SMALL.JPG
done



