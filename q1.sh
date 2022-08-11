#!/bin/bash

filepath=$1
if [ -f "$filepath" ]; then
    c=($(wc -l $filepath))

    lines=${c[0]}
    linetoread=$(( lines/2 ))
    linetoread=${linetoread%.*}

    for i in $(seq 1 $linetoread); do
        read -r line  
        if [[ $i -eq  $linetoread ]]; then
            echo $line
        fi    
	done <$filepath
    

else
  echo "file does not exist."	
fi