#!/bin/bash
#this code is to be done in the bamfiles directory
BAM=$(for i in *.bam; do echo $i | awk -F '.' '{print $1}'; done)

#please run the next part in the ICA1 directory that we made
for bam in $BAM; do samtools sort -o ${bam}_sorted.bam ${bam}.bam ;done
#this is the first step for alignment and will prepare our bam files for future steps
