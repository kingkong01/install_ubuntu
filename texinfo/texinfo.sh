#!/bin/bash
#gzip -dc < texinfo-4.13.tar.gz | tar -xf -
test -d texinfo || tar -xf texinfo-4.13.tar.gz
cd texinfo-4.13
./configure
make
sudo make install && touch builded
