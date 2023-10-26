#!/bin/bash
mkdir fastqc_output;
do fastqc -t 20 -i /localdisk/data/BPSM/ICA1/fastqc/*.fq.gz -o fastqc_output/;
done
