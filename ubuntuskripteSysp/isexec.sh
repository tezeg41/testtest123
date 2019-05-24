#!/bin/bash

for i in $(ls); do
if [ -x $i ]; then
if [ -f $i ]; then
echo $i
fi
fi
done
