#!/bin/bash


sudo apt-get install build-essential libpcre3 libpcre3-dev libssl-dev
test -d nginx-1.7.7 || tar -zxvf nginx-1.7.7.tar.gz
test -d nginx-rtmp-module-master || unzip master.zip
cd nginx-1.7.7
./configure --with-http_ssl_module --add-module=../nginx-rtmp-module-master
make

#sudo make install
#sudo cat nginx.config >> /usr/local/nginx/conf/nginx.conf 

sudo /usr/local/nginx/sbin/nginx -s stop
sudo /usr/local/nginx/sbin/nginx
