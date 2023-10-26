#!/bin/bash
ID=$(for i in *_1.fq.gz; do echo $i | awk -F '_' '{print $1}', done)
#this line will get the Tco-xxx part of the filenames into a variable called $ID
#I can use this to make loops to use bowtie2 on all of the files in one bit of script

mkdir samfiles
for id in $ID; do bowtie2 -p 20 -x ~/ICA1/bt2_index -1 /localdisk/data/BPSM/ICA1/fastq/${id}_1.fq.gz -2 /localdisk/data/BPSM/ICA1/fastq/${id}_2.fq.gz -S ~/ICA1/samfiles/${id}.sam; done
#this part of the code will make a directory for the resulting sam files, create the sam files from the fq.gz files and put the files in the samfiles directory
