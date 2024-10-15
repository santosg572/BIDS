#!/bin/bash

id=$1

pati="/home/jmartinez/Sujetos/Files"

rm -rf $pati/"Suj"${id}/sub*
rm -rf $pati/"Suj"${id}/tmp_dcm2bids/sub*
