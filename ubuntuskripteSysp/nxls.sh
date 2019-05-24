#!/bin/bash
temp=$(mktemp)
aus=""
for pfad in $(ls $1); do
    
    if [ ! -d $pfad ]; then
	if [ ! -x $pfad ]; then
	    echo $pfad  >> $temp
	    fi
    fi
done

sort  $temp
rm $temp
