#!/bin/bush

declare -A alphbet

for i in {a..z}; do
         alphabet["$i"]=$(printf "%d" "'$i'")
done


for i in {A..Z}; do
         alphabet["$i"]=$(printf "%d" "'$i'")
done

if [ $# -gt 0 ]; then
   for letter in "$@"; do
       value='${alphabet["$letter"]}'
       if [ -n $value ] ; do
          echo "$letter = $value"
       else
          echo "$letter is not a valid letter."
       fi
   done
else
   read -p "Enter alpabetical letters: " input
   for letter in $input; do
       value='${alphabet["$letter"]}'
       if [ -n $value ] ; do
          echo "$letter = $value"
       else 
          echo "$letter is not a valid letter."
       fi
   done
fi
