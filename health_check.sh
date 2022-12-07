#!/bin/bash


response=$(curl -s -o /dev/null -w "%{http_code}" $1)
if [ $response -eq 200 ]
then
    echo "$1 is up and running"
else
    echo "$1 is down"
fi


