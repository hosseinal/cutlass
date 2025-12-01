#!/bin/bash

##################### SLURM (do not change) v  #####################
#SBATCH --export=ALL
#SBATCH --job-name="project"
#SBATCH --nodes=1
#SBATCH --output="project.%j.%N.out"
#SBATCH -t 01:00:00
##################### SLURM (do not change) ^  #####################

# Above are SLURM directives for job scheduling on a cluster
export SLURM_CONF=/etc/slurm/slurm.conf

cd build/examples/cute/tutorial/

./cute_tutorial_sgemm_1 512 512 512
./cute_tutorial_sgemm_2 512 512 512