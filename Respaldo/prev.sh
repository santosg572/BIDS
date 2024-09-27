#!/bin/bash

file="Suj"${1}

mkdir ${file}

cd ${file}


dcm2bids_scaffold

mv ../${1} sourcedata/.

dcm2bids_helper -d sourcedata/${1}

cat tmp_dcm2bids/helper/*.json | grep SeriesDescription > ../${file}.txt


