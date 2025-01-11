# Compute Canada

Scripts for Compute Canada / Digital Research Alliance of Canada HPC clusters

## `tmux`

### Start a SLURM job with `tmux`
Submit a SLURM job using
```bash
sbatch /scratch/rdb/tmux_job.sh
```

### Check Job Status
To check if resources have been assigned and the job is running
```bash
watch -n 1 squeue -u rdb
```

### Attach to the Interactive `tmux` Session
Join the interactive `tmux` session by running
```bash
/scratch/rdb/tmux_attach.sh
```
If the SSH connection drops, reattach to the running session by executing the `tmux_attach.sh` script again
