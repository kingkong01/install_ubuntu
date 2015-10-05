#!/bin/bash
echo 'y' |sudo apt-get install vim
echo 'y' |sudo apt-get install vim-gtk 
echo 'y' |sudo apt-get install cscope
echo 'y' |sudo apt-get install ctags 
echo 'y' |sudo apt-get install vlc
echo 'y' |sudo apt-get install geany
echo 'y' |sudo apt-get install smbfs

echo 'y' |sudo apt-get install zlib1g-dev
echo 'y' |sudo apt-get install bison
echo 'y' |sudo apt-get install flex
echo 'y' |sudo apt-get install texinfo
echo 'y' |sudo apt-get install gettext
echo 'y' |sudo apt-get install libglib2.0-dev
echo 'y' |sudo apt-get install aptitude
echo 'y' |sudo apt-get install g++
echo 'y' |sudo apt-get install ser2net
echo 'y' |sudo apt-get install nfs-common
echo 'y' |sudo apt-get install nfs-kernel-server
echo 'y' |sudo apt-get install ctags
echo 'y' |sudo apt-get install cscope
echo 'y' |sudo apt-get install meld
echo 'y' |sudo apt-get install git
echo 'y' |sudo apt-get install gcin
echo 'y' |sudo apt-get install gitk
echo 'y' |sudo apt-get install cifs
echo 'y' |sudo apt-get install cifs-utils
#for make menuconfig
echo 'y' |sudo apt-get install libncurses5-dev
echo 'y' |sudo apt-get install openssh-server

echo 'y' |sudo apt-get install guake
#gconftool-2 --install-schema-file=/usr/share/gconf/schemas/guake.schemas


./install_bison.sh
./install_java.sh
./install_ser2net.sh
./install_tftp.sh
./nfs_server.sh
