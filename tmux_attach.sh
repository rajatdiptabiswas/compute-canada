#!/bin/bash

JOB_ID=$(squeue -u rdb | sed -n '2p' | awk '{print $1}')
srun --jobid $JOB_ID --pty tmux a -t $JOB_ID
