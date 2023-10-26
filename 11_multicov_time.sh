#!/bin/bash

#this code should be done in bamfiles
BAM=$(for i in *sorted.bam; do echo $i, done)
#this will get the names of the bam files which we will put into the bedtools multicov function

#this code should be done in ~/ICA1
mkdir bedtools_results
for bam in $BAM; do bedtools multicov -bams ${bam} -bed /localdisk/data/BPSM/ICA1/TriTrypDB-46_T_congolenseIL3000_2019.bed >> ~/ICA1/bedtools_results/${bam}.txt;done
#this code will create an alignment file from all the bams onto the reference genome
