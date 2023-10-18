#!/bin/bash
for i in */summary.txt;
do echo $i;
cat $i;
done
