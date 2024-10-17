#!/usr/bin/env bash
read -p "Enter device name: " devName


while true; do
    rand=$(shuf -i 65-200 -n 1)
    echo "$(date +"%F %T") $devName $rand" >> heart_rate_log.txt
    sleep 1
done &
echo "the PID is: $!"
