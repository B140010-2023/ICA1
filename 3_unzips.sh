#!/bin/bash
for i in *.zip; #this code is to be used  whilst in the fastqc_output directory
do unzip $i; #this code will unzip all the zipped files so that they can be read
done
