#!/bin/bash

# ---------------------------------------------------------------------
#SBATCH --account=def-t55wang
#SBATCH --time=03:00:00
#SBATCH --gpus-per-node=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=32G
#SBATCH --job-name=job
#SBATCH --output=/scratch/rdb/slurm_logs/job-%j.out
#SBATCH --mail-user=rdb5@sfu.ca
#SBATCH --mail-type=ALL
# ---------------------------------------------------------------------

# ---------------------------------------------------------------------
echo "Current working directory: $(pwd)"
echo "Starting run at: $(date)"
# ---------------------------------------------------------------------

# ---------------------------------------------------------------------
echo ""
echo "SLURM Job ID: $SLURM_JOB_ID"
echo "SLURM Array Task: $((SLURM_ARRAY_TASK_ID + 1))/$SLURM_ARRAY_TASK_COUNT"
echo ""
# ---------------------------------------------------------------------

# nvidia-smi

module --force purge
module load StdEnv/2020 scipy-stack cuda cudnn

virtualenv --no-download $SLURM_TMPDIR/env
source $SLURM_TMPDIR/env/bin/activate
pip install --no-index torch pytorch-ignite sklearn

python ~/scratch/rdb/script.py

# ---------------------------------------------------------------------
echo "Job finished with exit code $? at: $(date)"
# ---------------------------------------------------------------------

