#!/usr/bin/env bash

if [ -z "$1" ]; then
    ms=""
else
    ms=$1;
fi

sh ./build-containers.sh $ms
sh ./git-update-all.sh $ms
sh ./update-common.sh $ms
sh ./run-tests.sh $ms
sh ./containers-status.sh $ms
#sh ./stop-containers.sh $ms
