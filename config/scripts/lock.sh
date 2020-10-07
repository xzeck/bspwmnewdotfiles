TEMP=/tmp/tmplock.png
scrot $TEMP
#convert -thumbnail 20% -filter Gaussian -blur 0x0.5 -resize 500% $TEMP $TEMP
convert -filter Gaussian -blur 7x4 $TEMP $TEMP
i3lock -i $TEMP
rm $TEMP
