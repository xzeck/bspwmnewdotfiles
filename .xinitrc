#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


# settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=60"

xset r rate 150 30
xsetroot -cursor_name left_ptr
#nvidia-smi -pl 90

#~/.config/scripts/dunst.sh &
#~/.config/scripts/xrandrconfig.sh &

albert &

#exec i3
#exec xfce4-session
#exec awesome
#exec sway
#exec xmonad
exec bspwm
#exec dwm
#exec startdde
#exec openbox-session
#exec startplasma-x11
#exec cinnamon-session
