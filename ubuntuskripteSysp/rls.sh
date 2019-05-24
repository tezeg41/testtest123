#!/bin/bash
usage(){
    echo "Usage:  rls.sh <min> <max> " > /dev/stderr
    exit 1
}

# main
min="?"
max=""
mi=$1
ma=$2
if [ ! $# -eq 2 ]; then
    usage
else
    while [ $mi -gt 0 ]; do
	min="$min?"
	mi=$(( $mi - 1 ))
    done
    min="$min*"
    while [ $ma -gt 0 ]; do
	max="$max."
	ma=$(( $ma - 1 ))
    done
    max="$max"

    ls $min |grep -v $max
fi
