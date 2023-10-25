#!/bin/bash
ID=$(for i in *sorted.bam.txt; do echo $i | awk -F '_' '{print $1}'; done)
a=($ID)
AVG=${#a[@]}

count=0
val=0
cut -f3 sgene_id_C1T0U.txt > nums.txt
while IFS= read -r line; do
    ((count++))
    val=$(($val+$line))
    if [ $((count % AVG)) -eq 0 ]; then
        echo $(($val/AVG))
        val=0;
    fi
done < nums.txt
