#!/bin/bash

sujeto=$1
ID=$2
config=$3

cp ${config} dcm2bids-tutorial/bids_project/code/dcm2bids_config.json

dcm2bids -d dcm2bids-tutorial/bids_project/sourcedata/${sujeto}/ -p ${ID} -c dcm2bids-tutorial/bids_project/code/dcm2bids_config.json --auto_extract_entities

#rm -rf dcm2bids-tutorial  
#rm -rf tmp_dcm2bids 




dcm2bids_config.json
