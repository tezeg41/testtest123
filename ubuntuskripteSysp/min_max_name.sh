#!/bin/bash
temp=$(mktemp)

for name in $(cut -d ":" -f 1 /etc/passwd); do
    
    aus=$(echo -n  $name | wc -c):$name 
    echo $aus >> $temp 

done

sort  -V $temp | cut -d ":" -f 2
rm $temp
