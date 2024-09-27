#!/bin/bash

sujeto="suj213"

dir=$(ls -1 ./${sujeto}/tmp_dcm2bids/helper/*.json)


for s in ${dir}
do
  echo $s
  cat $s | grep SeriesD >> ${sujeto}"_descripcion.txt"
done

#cat ./tmp_dcm2bids/helper/007_datos_fMRI_PsicologiaRestaurat_20150801130011.json | grep SeriesD

