#!/bin/bash

id=$1

mkdir Meditacion/sub-${id}/anat
mv Meditacion/sub-${id}/func/sub-${id}_task-attention_run-01_bold.json    Meditacion/sub-${id}/anat/sub-${id}_T1w.json
mv Meditacion/sub-${id}/func/sub-${id}_task-attention_run-01_bold.nii.gz  Meditacion/sub-${id}/anat/sub-${id}_T1w.nii.gz
mv Meditacion/sub-${id}/func/sub-${id}_task-attention_run-02_bold.json    Meditacion/sub-${id}/func/sub-${id}_task-attention_bold.json
mv Meditacion/sub-${id}/func/sub-${id}_task-attention_run-02_bold.nii.gz  Meditacion/sub-${id}/func/sub-${id}_task-attention_bold.nii.gz





