#!/bin/bash

#cp -i config/fstab test/fstab
#cp -i config/fstab test/fstab

for i in `cat system_config_path`
do
	cp $i backup/
	echo $i |awk -F"/" '{ print $NF }' |xargs  --interactive -I {} cp  "config/"{} test/{}
	#cp $filename $i
done
