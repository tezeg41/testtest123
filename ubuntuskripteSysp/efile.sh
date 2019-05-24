#!/bin/bash
usage(){
echo "Usage efile.sh <file>" >/dev/stderr
exit 1
}

if [ ! $# -eq 1 ]; then
usage
fi

if [ -f $1 ]; then
cat $1 | sed -n 3p
else
echo "hallo123" >> $1
fi




