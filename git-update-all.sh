#!/usr/bin/env bash

branch="master"

if [ -z "$1" ]; then
    msList=$(find . -type l | cut -d"/" -f 2)
else
    msList=$1;
fi

for ms in $msList; do
    cd $ms;
    git fetch && git checkout $branch && git pull;
    cd ../;
done
