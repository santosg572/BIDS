#!/bin/bash

dir=$(ls ../san* -1)

for file in ${dir}
do
  echo ${file}
  unzip ${file} -d ../Files/
done

