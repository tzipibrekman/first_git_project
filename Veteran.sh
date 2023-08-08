#!/bin/bash


if ! [[ $1 =~ ^-[0-9]+$ ]];
then
    echo "ERROR: Syntex is not valid"
else
    num=${1#-}
    file_name="ex$num"
    ./"$file_name".sh "${@:2}"
fi
