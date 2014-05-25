#!/bin/bash

filename="$1"

for homedir in /home/*; do
    if cmp "/etc/skel/$filename" "$homedir/$filename" &>/dev/null; then
    	owner_group=$(find $homedir -maxdepth 0 -printf '%u:%g')
        echo "$filename:$homedir:${owner_group%:*}:${owner_group#*:}"
    fi
done
