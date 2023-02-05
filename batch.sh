#!/bin/bash

#SBATCH -p willhies,gpu
#SBATCH -c 12
#SBATCH --mem=48GB 
#SBATCH -t 48:00:00
#SBATCH --gpus=1
#SBATCH --constraint="[GPU_MEM:32GB|GPU_MEM:40GB]"
#SBATCH -J cmr_s1

# activate conda environment
source activate dynamic

echonet segmentation --save_video
echonet video



