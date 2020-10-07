if [[ $EUID -ne 0 ]]; then 
	echo "This script must be run as root" 
	exit 1
fi

home=/home/ajay

#Copy .Xresources
cp $HOME/.Xresources $HOME/Desktop/i3dotfiles/

#Copy wallpapers
cp -r $HOME/Pictures/wallpaper $HOME/Desktop/i3dotfiles/

#Copy Compton config 
cp $HOME/.config/compton.conf $HOME/Desktop/i3dotfiles/.config/

#Copy dunst config
cp $HOME/.config/dunst/dunstrc $HOME/Desktop/i3dotfiles/.config/dunst

#Copy i3 config
cp $HOME/.config/i3/config $HOME/Desktop/i3dotfiles/.config/i3/

#Copy polybar config
cp -r $HOME/.config/polybar $HOME/Desktop/i3dotfiles/.config/

#Copy Rofi config
cp -r $HOME/.config/rofi $HOME/Desktop/i3dotfiles/.config/

#Copy scripts
cp -r $HOME/.config/scripts $HOME/Desktop/i3dotfiles/.config/

rm  -rf $HOME/Desktop/i3dotfiles/.config/scripts/weather-icons
