#! /bin/bash
filename=$1
num_lines=$2

if [[ $# -ne 2 ]]; then
  echo "Usage: $0 <file> <num_lines>"
  exit 1
fi


head -n 3 $(find ../../dataset1/tables -type f -name "target_prokaryotes.txt")
echo ...
tail -n 3 $(find ../../dataset1/tables -type f -name "target_prokaryotes.txt")
