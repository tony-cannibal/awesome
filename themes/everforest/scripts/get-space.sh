#!/usr/bin/bash


media=$(df -h /home/luis/.media/ | tail -n 1 | awk '{print $4}')
root=$(df -h /home | tail -n 1 | awk '{print $4}')


echo "0:$root 1:$media"

