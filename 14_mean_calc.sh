#!/bin/bash
ID=$(for i in *sorted.bam.txt; do echo $i | awk -F '_' '{print $1}'; done) #as before this gets the IDs for use in a loop
current_dir_name=${PWD##*/} #this is how I got the name of the current directory so that the code works within each groups dir
a=($ID)
AVG=${#a[@]} #when calculating the mean I need to know the number of items in the group which varies between 3 and 4
#this AVG bit of code should return the number of files in the group

for id in $ID; do cut -f4,5,6 ${id}_sorted.bam.txt >> {current_dir_name}.txt; done #this will take the gene name, description, and count
cat ${current_dir_name}.txt | sort -k1 >> ${current_dir_name}.sorted.txt #this will sort the names by the first column

count=0
val=0
cut -f3  ${current_dir_name}.sorted.txt > nums.txt #this line of code will take the numbers from the third column and put them in a text file
while IFS= read -r line; do
    ((count++))
    val=$(($val+$line))
    if [ $((count % AVG)) -eq 0 ]; then
        echo $(($val/AVG))
        val=0;
    fi
done < nums.txt
#the rest of the code is a loop which should add up the values from the same gene and then divide it by the number of copies
#the results are then outputted into a text file
