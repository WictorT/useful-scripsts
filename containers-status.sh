#!/usr/bin/env bash

if [ -z "$1" ]; then
    msList=$(find . -type l | cut -d"/" -f 2)
else
    msList=$1;
fi

for ms in $msList; do
    cd $ms;
    docker-compose ps;
    cd ../;
done
