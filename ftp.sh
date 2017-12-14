#!/bin/bash

now=$(date +%Y%m%d)


cd /root/Desktop/current/pcaps/
mkdir $now
cd $now

HOST=x.x.x.x
USER=user
PASSWD=password

ftp -v -n $HOST <<END_OF_SESSION
user $USER $PASSWD
cd current
mget *
quit
