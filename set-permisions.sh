#!/usr/bin/env bash

currentUser=$(whoami);

if [ -z "$1" ]; then
    msList=$(find . -type l | cut -d"/" -f 2)
else
    msList=$1;
fi

for ms in $msList; do
    chmod -R 777 $ms/var/cache $ms/var/logs
    chown -R $currentUser:$currentUser $ms/var/cache $ms/var/logs
done
