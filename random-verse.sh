#!/bin/bash

# BOOKS=("Gen" "Exo" "Lev" "Num" "Deu")

# size=${#BOOKS[@]}
# index=$(($RANDOM % $size))
# book=${BOOKS[$index]}

# output=$(vul $book)

# echo "$output"

# IFS=$'\n' read -d '' -a lines <<< "$output"
IFS=$'\n' read -d '' -a lines < vul.tsv
size=${#lines[@]}
index=$(($RANDOM % $size))
line=${lines[$index]}

echo "$line" | awk -F'\t' '{ print $1" "$4":"$5"\n"$6 }'
# echo "$line" | awk -F'\t' '{ print $1" "$2 }'
# echo "$line" | awk 'BEGIN { FS = "\t" } ; { print $1 }'
