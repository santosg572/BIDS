#!/bin/bash

pat="/home/jmartinez/Sujetos/Files"

file="Suj"${1}

mkdir ${pat}/${file}

cd ${pat}/${file}


dcm2bids_scaffold

pwd

cp -r  ${pat}/${1} sourcedata/.

dcm2bids_helper -d sourcedata/${1}

cat tmp_dcm2bids/helper/*.json | grep SeriesDescription > ${pat}//${file}.txt


