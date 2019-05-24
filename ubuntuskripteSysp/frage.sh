#!/bin/bash
while [ 1 ]; do
    
    echo "$1 ($2/$3)"
    read antwort
    if [ $antwort = $2 ]; then
	exit 0
    elif [ $antwort = $3 ]; then
	exit 1
    fi
done
