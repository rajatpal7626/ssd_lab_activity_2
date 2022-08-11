#!/bin/bash

#etc/shells'
file="/etc/shells"

if [ -f "$file" ]; then

	while read -r line; do
	    if [[ "$line" == *"usr"* ]]; then
            IFS=/
            l=( $line )
            echo ${l[-1]}
        fi
	done <$file
else
  echo "file does not exist."	
fi

