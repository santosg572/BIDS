#!/bin/bash

patin="/home/vagrant/dcm2bids_config"
file="dcm2bids_config.json"

dir="suj1"

cp ${patin}/${file} ./${dir}/code/

cd ${dir}

dcm2bids -d sourcedata/dcm_qa_nih/In/ -p ID01 -c ./code/dcm2bids_config.json --auto_extract_entities

# https://github.com/bids-standard/bids-validator

