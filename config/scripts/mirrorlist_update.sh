if [ "$EUID" -ne 0]
then echo "Please run the script as root" 
       exit
fi       


curl -o /etc/pacman.d/mirrorlist.pacnew https://www.archlinux.org/mirrorlist/all/

sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.pacnew

rankmirrors -n 10 /etc/pacman.d/mirrorlist.pacnew > /etc/pacman.d/mirrorlist


