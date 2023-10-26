#!/bin/bash

#please do this code in the bamfiles directory
sBAM=$(for i in *sorted.bam; do echo $i; done)
#this will grab all our sorted.bam files

for sbam in $sBAM; do samtools index ${sbam}; done
#this code will index the bam files so that we can perform the bedtools multicov command
