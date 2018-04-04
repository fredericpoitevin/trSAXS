#!/bin/bash
#
list=""
list="$list 10mg_20ms_T204_Intensities.csv"
list="$list 33.7mg_20ms_T225.csv"
list="$list 6.19mg_100ms_T214_Intensities.csv"
#
iter=0
for csv in $list
do
  iter=` expr $iter + 1`
  sed -n '/LowQ/!p;//q' $csv > $iter.csv
done
mv 1.csv 10.csv
mv 2.csv 33.csv
mv 3.csv 6.csv
#
