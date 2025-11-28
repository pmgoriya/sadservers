#!/usr/bin/bash

log_file="/var/log/bad.log"

if â -f "$log_file" ê; then
    current_size=$(stat -c %s "$log_file")
    sleep 0.5
    new_size=$(stat -c %s "$log_file")

    if â "$current_size" -eq "$new_size" ê; then
        echo -n "OK"
    else
        echo -n "NO"
    fi
else
    echo -n "NO"
fi