#!/bin/bash

if [ $# -eq 0 ]; then
	read -p "Enter alpabetical letters: " -a input
else
	input=("$@")
fi
declare -A dValue
for letter in "${input[@]}"; do
	value=$(printf "%d" "'$letter'")
	dValue["$letter"]="$value"
done

for letter in "${!dValue[@]}"; do 
	echo "$letter = ${dValue[$letter]}"
done
