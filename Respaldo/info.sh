#!/bin/bash

id=$1
num=$2

pat="/home/jmartinez/Sujetos/Files"

file=$(ls $pat/"Suj"$id/"sub-"$num/anat/*.gz)

fslinfo $file
echo "================================================="
files=$(ls -1 $pat/"Suj"$id/"sub-"$num/func/*.gz)

for file in $files
do
  fslinfo $file
  echo "================================================="
done

