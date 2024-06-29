#!/usr/bin/bash



free=$(df -h /home/luis/.media | tail -n 1 | awk '{print $4 }')


echo "$free"

