#!/bin/bash

role=`id -u`
if test $role -ne 0
then
    echo "docker requires root privileges"
    exit 1
fi

docker run -d -p 8080:8080  httpbin:0.9
