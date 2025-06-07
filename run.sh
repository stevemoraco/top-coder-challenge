#!/bin/bash
# Simple linear approximation model
if [ "$#" -ne 3 ]; then
  echo "0"
  exit 0
fi
D=$1
M=$2
R=$3
result=$(echo "scale=2; 266.7076805048639 + $D*50.05048622 + $M*0.44564529 + $R*0.38286076" | bc)
printf "%.2f" "$result"
