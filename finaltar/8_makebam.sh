#!/bin/bash
#this code should be executed whilst in the ~/ICA1/samfiles direstory made in part 6

SAM=$(for i in *.sam; do echo $i | awk -F '_' '{print $1}';done)
#this code should create a variable containing all the ID names which we'll use in a later loop


for sam in $SAM; do samtools view -bS -o ~/ICA1/bamfiles/${sam}.bam ~/ICA1?samfiles/${sam}.sam; done
#this code should convert sam files to bam files and then stick them in the bamfiles directory
