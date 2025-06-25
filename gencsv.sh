#!/bin/bash

start=$1
end=$2
filename="inputFile"

rm -f $filename
index=0

for i in $(seq $start $end)
do
  echo "$index,$((RANDOM % 1000))" >> $filename
  index=$((index + 1))
done

