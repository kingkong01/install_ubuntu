#!/bin/bash
#test -f libbison-dev_2.7.1.dfsg-1_amd64.deb ||wget http://launchpadlibrarian.net/140087283/libbison-dev_2.7.1.dfsg-1_amd64.deb
#test -f bison_2.7.1.dfsg-1_amd64.deb || wget http://launchpadlibrarian.net/140087282/bison_2.7.1.dfsg-1_amd64.deb
sudo dpkg -i bison/libbison-dev_2.7.1.dfsg-1_amd64.deb
sudo dpkg -i bison/bison_2.7.1.dfsg-1_amd64.deb
