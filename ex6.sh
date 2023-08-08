#!/bin/bash

count=$(grep -c '/bin/bash' /etc/passwd)
users=$(grep "/bin/bash" /etc/passwd)
row=0
coulmn=0
cols=7
declare -A array


for user in $users; do
IFS=":" read -ra user_split <<< "$user" 
        for detail in "${user_split[@]}"; do
            array[$row,$((coulmn%7))]="$detail"
            ((coulmn++))
	   done
   ((row++))
done


for ((i=0;i<$count;i++)); do
   for((j=0; j<$cols; j++)); do
      printf "%s\t" "${array[$i,$j]}"
   done
   echo
done
