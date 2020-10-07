brightness=$(xrandr --verbose | awk '/Brightness/{print $2}')
factor=0.1
upperlimit=1.0
newbrightness=$(echo "$brightness+$factor" | bc)

if [ $(echo "$newbrightness <= $upperlimit" | bc) -eq 1 ]
then
xrandr --output DVI-D-0 --brightness $newbrightness

notify-send "brightness increased to : " $newbrightness
fi

