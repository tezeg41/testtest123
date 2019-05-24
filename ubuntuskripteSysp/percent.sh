#!/bin/bash
usage(){
echo "Usage: percent.sh <int> <int>" >/dev/stderr
exit 1
}

if [ ! $# -eq 2 ]; then
usage
fi

echo $[$2*100/$1]%
