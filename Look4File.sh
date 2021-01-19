#!/bin/bash


if [ -n "$2" ]

then

while IFS= read -r line;
do

  echo "$line/"$1
  echo "***************"
  curl -s  "$line/"$1
  echo "******************"
done < $2

else
        echo "syntax: ./script.sh <file or folder to search> <path to subdomain text file>"
fi
