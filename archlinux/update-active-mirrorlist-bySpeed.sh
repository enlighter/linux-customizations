sudo -i
cp -v /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
cp -v /etc/pacman.d/mirrorlist.pacnew /etc/pacman.d/mirrorlist
cp -v /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backed
sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.backed
rankmirrors --verbose -n 9 /etc/pacman.d/mirrorlist.backed > /etc/pacman.d/mirrorlist
exit
