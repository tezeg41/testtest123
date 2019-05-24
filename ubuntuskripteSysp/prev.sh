#!/bin/bash
for file in $(ls $1*); do
    newname=$(echo $file | sed s/$1/$2/)
    mv $file $newname
   # mv -f $file $[ sed s/$1/$2/g $file 
done

