#!/bin/bash
zahl=$1
binary=""
while [ $zahl -ne 0 ]; do
    binary=$[ $zahl % 2 ]$binary
    zahl=$[ $zahl / 2 ]
done
echo $binary
