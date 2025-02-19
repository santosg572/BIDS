#!/bin/bash

sujeto=$1

mkdir dcm2bids-tutorial
cd dcm2bids-tutorial


dcm2bids_scaffold -o bids_project

cd bids_project

# Download neuroimaging data

#wget -O dcm_qa_nih-master.zip https://github.com/neurolabusc/dcm_qa_nih/archive/refs/heads/master.zip

#unzip dcm_qa_nih-master.zip -d sourcedata/

pwd
cp -r ../../../${sujeto} sourcedata/.

# Rename the directory dcm_qa_nih.

#mv sourcedata/dcm_qa_nih-master sourcedata/dcm_qa_nih


# Building the configuration file

dcm2bids_helper -d sourcedata/${sujeto}


