updates=$(checkupdates)

printf "$updates" | awk '{ print $1 }'

#rofi -modi "Updates:checkupdates" -show Updates -theme slate

