#!/bin/bash
temp=$(mktemp)
aus=""
for passw in $(cat $1); do
    
    aus1=""
    passwhash=$( echo -n $passw | md5sum | cut -d " " -f 1)
    aus1=$(cat $2 | grep $passwhash | wc -l) 
    echo $aus1,\"$passw\",$passwhash >> $temp 

done

sort -r -V $temp
rm $temp

