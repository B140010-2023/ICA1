#!/bin/bash

current_dir_name=${PWD##*/} #this is how I got the name of the current directory so that the code works within each groups dir

cut -f1,2 ${current_dir_name}.sorted.txt | uniq > unique_names.txt #this takes the gene names and descriptions and puts them in another text file without triplicates
/bin/bash mean_calc.sh > means.txt #this will put the means of gene expression into a text file

paste unique_names.txt means.txt > ${current_dir_name}.output.txt #this will put the means into a document with the gene names
