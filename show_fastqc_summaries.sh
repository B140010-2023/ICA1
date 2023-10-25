#!/bin/bash
for i in fastqc_output/*/summary.txt;
do echo $i;
cat $i;
done
