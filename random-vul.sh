#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

IFS=$'\n' read -d '' -a lines < vul.tsv
size=${#lines[@]}
index=$(($RANDOM % $size))
line=${lines[$index]}

echo "$line" | awk -F'\t' '{ print $1" "$4":"$5 }'
echo "================"
echo "$line" | awk -F'\t' '{ print $6 }'
echo

