#!/bin/bash

CONFIG_GG="BANNER:banner:\r\nser2net port \p device \d [\s] (Debian GNU/Linux)\r\n\r\n"
CONFIG_HERE="4000:telnet:600:/dev/ttyUSB0:57600 8DATABITS NONE 1STOPBIT banner \n
5000:telnet:600:/dev/ttyUSB1:57600 8DATABITS NONE 1STOPBIT banner\n
6000:telnet:600:/dev/ttyUSB2:57600 8DATABITS NONE 1STOPBIT banner"

#install tftp server & client
echo 'y' |sudo apt-get install ser2net 
echo 'y' |sudo apt-get install minicom 

sudo rm /etc/ser2net.conf

echo  $CONFIG_GG | sudo tee  /etc/ser2net.conf 
echo -e $CONFIG_HERE | sudo tee -a /etc/ser2net.conf 

sudo /etc/init.d/ser2net restart

#sudo minicom -D /dev/ttyUSB1 -b 57600 -c on -C /tmp/minicom.log
