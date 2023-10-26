#!/bin/bash
for i in fastqc_output/*/summary.txt; #this code will take all files which end in summary.txt 
do echo $i; #so that we can see fastQC's summary of the RNA seq data
cat $i;
done
