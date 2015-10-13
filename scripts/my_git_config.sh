#!/bin/bash

place=$1
[ "x$place" == "x" ] &&  exit 1;

#test "$place" == "company" && email="Weihsuan.Tsai@avermedia.com" && name="Weihsuan.Tsai"
if [ "$place" == "home" ];then
    email="pa015596@gmail.com"
    name="kingkong"
elif [ "$place" == "company" ];then
    email="Weihsuan.Tsai@avermedia.com"
    name="Weihsuan.Tsai"
else
    echo "wrong place!!"
    exit 1
fi

echo $email
echo $name

git config user.name $name
git config user.email $email

exit 0
