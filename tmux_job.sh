#!/bin/bash

#SBATCH --time=12:00:00
#SBATCH --gpus-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --account=def-t55wang
#SBATCH --mem=16G
#SBATCH --job-name=tmux
#SBATCH --output=/scratch/rdb/slurm_logs/%j.out

module --force purge
module load StdEnv/2020 scipy-stack cuda cudnn

tmux new-session -d -s "$SLURM_JOB_ID"
sleep 24h
