#!/bin/bash
count=$(grep -c '/bin/bash' /etc/passwd)
users="$(cat /etc/passwd)"
cols=7
for ((i=0; i<count; i++)); do
  for ((j=0; j<cols; j++)); do
    array[$i,$j]=""
  done
done
row=0
coulmn=0
for user in $users; do 
        for detail in $user; do
            array[row,coulmn]="$detail"
            ((coulmn++))
            echo $coulmn
	   done
         coulmn=0
   ((row++))
done
echo "${array[0,0]}"
echo "${array[1,1]}"
for ((i=0; i<rows; i++)); do
  for ((j=0; j<cols; j++)); do
    echo -n "${array[$i,$j]} "
  done
  echo 
done
echo end of file
