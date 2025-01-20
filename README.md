# Compute Canada

Scripts for [Compute Canada](https://www.ace-net.ca/compute-canada-operations-move-to-the-digital-research-alliance-of-canada-(the-alliance).html) / [Digital Research Alliance of Canada](https://alliancecan.ca/en) HPC clusters.

The code examples below are for [Simon Fraser University](https://www.sfu.ca/)'s [Cedar](https://www.sfu.ca/research/institutes-centres-facilities/other-facilities/supercomputer-cedar.html) cluster.

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
If the SSH connection drops, reattach to the running session by executing the `tmux_attach.sh` script again.
