#!/bin/bash
for file in $(ls *$1); do
    echo "wollen sie die datei $file kopieren(j/n)?"
    check=1
    while [ $check -eq 1 ]; do
	read janein
	if [ $janein = "j" ]; then 
	    mkdir backup -p
	    cp -f $file ./backup/$file
	    check=0
	elif [ ! $janein = "n" ]; then
	    echo "falsche eingabe, wollen sie die datei $file kopieren? (j/n)?"
	else
	    check=0
	fi
    done
done

       
    
