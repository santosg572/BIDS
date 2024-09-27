#!/bin/bash

id=$1
num="01"

#source ./Suj205.sh 
source ./Suj${id}.sh 

cp dcm2bids_config.json "Suj"${id}/code/.

sed -i "s/ANATOMICA/$anatomica/g" "Suj"${id}/code/dcm2bids_config.json
sed -i "s/STROOP1/$stroop1/g" "Suj"${id}/code/dcm2bids_config.json
sed -i "s/STROOP2/$stroop2/g" "Suj"${id}/code/dcm2bids_config.json
sed -i "s/STROOP3/$stroop3/g" "Suj"${id}/code/dcm2bids_config.json
sed -i "s/RESTSTATE1/$reststate1/g" "Suj"${id}/code/dcm2bids_config.json
sed -i "s/RESTSTATE2/$reststate2/g" "Suj"${id}/code/dcm2bids_config.json
sed -i "s/RESTSTATE3/$reststate3/g" "Suj"${id}/code/dcm2bids_config.json
sed -i "s/VIDEO/$video/g" "Suj"${id}/code/dcm2bids_config.json
sed -i "s/RESTAURATIVE/$restaurative/g" "Suj"${id}/code/dcm2bids_config.json

cd "Suj"${id}

dcm2bids -d sourcedata/${id}/ -p ${num} -c code/dcm2bids_config.json --auto_extract_entities


