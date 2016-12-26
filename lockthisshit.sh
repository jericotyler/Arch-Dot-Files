#!/bin/bash
date=$(date +%s)
dir='/xlock/'
png='.png'
icon=$HOME/xlock/icon.png
tmpbg=$HOME$dir$date$png
rm $tmpbg
maim --opengl $tmpbg
convert $tmpbg -scale 5% -scale 2000% $tmpbg
convert -composite -gravity center $tmpbg $icon $tmpbg
i3lock -i $tmpbg
rm $tmpbg