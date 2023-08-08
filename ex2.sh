#!/bin/bash

if [ -f $1 ]; then
	content=$(cat $1)
	IFS=$2 read -ra split_content <<< $content
	count=1
	
	for filed in "${split_content[@]}"; do
		echo "filed $count: $filed"
		((count++))
	done
else
	echo "file doesn't exsist"
fi
