#!/bin/bash

sujeto="suj1"

dcm2bids_scaffold -o ${sujeto}

cd ${sujeto}

wget -O dcm_qa_nih-master.zip https://github.com/neurolabusc/dcm_qa_nih/archive/refs/heads/master.zip

unzip dcm_qa_nih-master.zip -d sourcedata/

mv sourcedata/dcm_qa_nih-master sourcedata/dcm_qa_nih

dcm2bids_helper -d sourcedata/dcm_qa_nih/In/

cd 
