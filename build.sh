#!/bin/bash

role=`id -u`
if test $role -ne 0
then
    echo "docker requires root privileges"
    exit 1
fi

docker build -t httpbin:0.9 .
