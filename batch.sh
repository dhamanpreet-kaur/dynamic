#!/bin/bash

#SBATCH -p willhies,gpu
#SBATCH -c 12
#SBATCH --mem=48GB 
#SBATCH -t 6:00:00
#SBATCH --gpus=1
#SBATCH --constraint="[GPU_MEM:32GB|GPU_MEM:40GB]"
#SBATCH -J cmr_s1

# activate conda environment
conda activate dynamic

echonet video --weights /scratch/users/dkaur24/dynamic/output/video/r2plus1d_18_32_2_pretrained/best.pt --run_test --num_epochs 1



