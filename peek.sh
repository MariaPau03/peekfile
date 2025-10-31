#! /bin/bash

filename=$1
num_lines=$2

total_file_lines=$(wc -l < "$filename")

if [[ -z $num_lines ]]; then num_lines=3; fi

if [[ $total_file_lines -le $((2*num_lines)) ]]; then cat $filename; else
echo ""
echo "Warning: file has $total_file_lines lines in total, so as it contains more lines, it is only shown the first 3 and last 3 lines :)"
echo ""
head -n $num_lines $filename
echo ...
tail -n $num_lines $filename
fi

