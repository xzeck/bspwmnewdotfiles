brightness=$(xrandr --verbose | awk '/Brightness/{print $2}')
factor=0.1
lowerlimit=0.4
newbrightness=$(echo "$brightness-$factor" | bc)

if [[ $(echo "$newbrightness >= $lowerlimit" | bc) -eq 1 ]]
then
xrandr --output DVI-D-0 --brightness $newbrightness

notify-send "brightness lowered to : " $newbrightness
fi
