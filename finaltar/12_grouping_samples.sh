#!/bin/bash

#start in ~/ICA1
mkdir grouped_samples
cd grouped_samples
mkdir C1T0U
mkdir C1T24I
mkdir C1T24U
mkdir C1T48I
mkdir C1T48U
mkdir C2T0U
mkdir C2T24I
mkdir C2T24U
mkdir C2T48I
mkdir C2T48U
mkdir WTT0U
mkdir WTT24I
mkdir WTT24U
mkdir WTT48I
mkdir WTT48U

#I want to group the samples by their clonal type (clone 1, clone 2, wild type), their induction status,
#and their time of sampling. The created directories correspond to these subsets, e.g. C2 = clone 2,
#T48 = sample taken at 48 hours, U=uninduced, I=induced, WT=wild type etc...
