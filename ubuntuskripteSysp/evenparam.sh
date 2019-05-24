#!/bin/bash
usage(){
    echo "Usage: evenparam {even number of Arguments}" > /dev/stderr
    exit 1
}

# main

if [ $[$# % 2] -eq 1 ];then
    usage
else
    ctr=0
    ausgabe=""
    for i in $@; do
	ctr=$[ $ctr+1 ]
	if [ ! $[$ctr-1] -eq 0 ];then
	  if [ $[$[$ctr-1] % 2] -eq 1 ]; then
	    ausgabe="$ausgabe="
	  else
	      ausgabe="$ausgabe, "
	  fi
       fi
	  ausgabe="$ausgabe$i"
    done
    echo $ausgabe
fi
    
    
      
