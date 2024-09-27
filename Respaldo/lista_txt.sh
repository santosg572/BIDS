#!/bin/bash

files=$(ls -1 *.txt)

for fil in $files
do
 echo $fil
 cat $fil
done

