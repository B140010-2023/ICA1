#!/bin/bash

cut -f1,2 sgene_id_C1T0U.txt | uniq > unique_names.txt
/bin/bash mean_calc.sh > means.txt

paste unique_names.txt means.txt > output.txt
