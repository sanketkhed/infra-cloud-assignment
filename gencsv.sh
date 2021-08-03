#!/bin/bash

# Change the value against "CSVROWS" to have those many vaules in generate .csv file
CSVROWS=10
count=1

while [ "$count" -le $CSVROWS ]
do
  number=(`shuf -i 1-1000 -n 1`)
  for i in $CSVROWS; do printf '%s\n' $count $number | paste -sd "," >> inputFile; done
  count=$((count + 1))
done
