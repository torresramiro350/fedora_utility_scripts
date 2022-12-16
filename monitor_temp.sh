#!/bin/bash


while :
do
    sleep 10
    echo "Current temperature is:"
    sudo tlp-stat -t
done
