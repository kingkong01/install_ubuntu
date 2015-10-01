#!/bin/bash

TFTP_CONFIG="
service tftp \n
{\n
socket_type = dgram\n
protocol = udp\n
wait = yes\n
user = root\n
server = /usr/sbin/in.tftpd\n
server_args = -s /tftpboot\n
disable = no\n
per_source = 11\n
cps = 100 2\n
flags = IPv4\n
}"

#install tftp server & client
echo 'y' |sudo apt-get install tftpd
echo 'y' |sudo apt-get install tftp
echo 'y' |sudo apt-get install xinetd 

echo -e $TFTP_CONFIG | sudo tee /etc/xinetd.d/tftp

test -d /tftpboot || sudo mkdir /tftpboot && sudo chown kingkong:kingkong /tftpboot && chmod -R 777 /tftpboot

sudo /etc/init.d/xinetd restart


