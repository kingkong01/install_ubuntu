#!/bin/bash
sudo apt-get install nfs-common
sudo apt-get install nfs-kernel-server

grep -q "/home/kingkong/nfs" /etc/exports||  echo  "/home/kingkong/nfs *(rw,sync)" | sudo tee -a /etc/exports
sudo /etc/init.d/nfs-kernel-server start
sudo /etc/init.d/nfs-kernel-server restart
