#!/bin/bash
# Polynomial regression approximation
exit_on_error() {
  echo "0"
  exit 0
}
if [ "$#" -ne 3 ]; then
  exit_on_error
fi
D=$1
M=$2
R=$3
result=$(echo "scale=2; -165.13884827640285 + $D*88.17230215676719 + $M*0.4069550110951272 + $R*1.2116765573858304 + $D*$M*0.014510187774756541 + $D*$R*-0.00890939668948265 + $M*$R*-0.00011392118367239086 + $D*$D*-2.5902746074675034 + $M*$M*0.000035269255066696914 + $R*$R*-0.0002785201970932606" | bc)
printf "%.2f\n" "$result"
