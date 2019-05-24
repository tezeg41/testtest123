#!/bin/bash
ctr=0
for i in $@; do
ctr=$[ $ctr+1 ]
if [ $[$#-1] -le $ctr ];then 
echo $i
fi
done


