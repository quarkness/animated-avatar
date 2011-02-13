#!/bin/sh
#ffmpeg -i ava.m4v ava-%03d.png

for FILE in `ls -1 ava*png` 
do
	convert -adaptive-resize x100 $FILE $FILE-s.png
 	convert -crop 100x100+0+0 -trim +repage $FILE-s.png $FILE.gif
done
rm t.png

gifsicle --loopcount -O2 \
 -d 1 ava-001.png.gif \
 -d 1 ava-003.png.gif \
 -d 1 ava-005.png.gif \
 -d 1 ava-007.png.gif \
 -d 1 ava-009.png.gif \
 -d 1 ava-010.png.gif \
 -d 1 ava-008.png.gif \
 -d 1 ava-006.png.gif \
 -d 1 ava-004.png.gif \
 -d 1 ava-002.png.gif \
> ava-gifsicle.gif