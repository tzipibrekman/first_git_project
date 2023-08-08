#!/bin/bash

rows=$(( $RANDOM % 10 + 1 ))
columns=$(( $RANDOM % 10 + 1 ))
declare -A array

for ((i=0;i<$rows;i++)); do 
        for ((j=0;j<$columns;j++)); do
                array[$i, $j]=$(( $RANDOM % 100 ))
        done
done



for ((i=0;i<$rows;i++)); do
        for((j=0;j<$columns; j++)); do
                if [ "${array[$i, $j]}" -lt 10 ]; then
                        echo -n "${array[$i, $j]}   "
                else
                        echo -n "${array[$i, $j]}  "
                fi
   done
   echo
done





