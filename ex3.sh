#!/bin/bash
input_arr=()
count_arr=()
word_array=("one" "two" "three" "four" "five" "six" "seven" "eight" "nine" "ten")
for input_item in "$@"; do
    input_arr+=("$input_item")
done
for ((i = 0; i < 10; i++)); do
    count_arr[$i]=0
done
for num in "${input_arr[@]}"; do
    ((count_arr[$num]++))
done
for ((i = 1; i <= 10; i++)); do
    if (( count_arr[i] > 0 )); then
        echo "${word_array[$i-1]} appeared ${count_arr[$i]} times"
    fi
done
    
