#!/bin/bash

if [ $# -ne 1 ]; then
    echo "usage $0 [ip]"
    exit 1
fi

host=$1

for ((i=1; i<=10; i++));
do
    result=$(ab -t 10 -n 100 -c 100 http://${host}:9000/ 2>&1 | grep "Requests per second")
    echo "Test ${i}: ${result}"
    sleep 5

done
