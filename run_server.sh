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


echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_1 512 32 512" > "output.txt"
./cute_tutorial_sgemm_1 512 32 512>> "output.txt"
echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_2 512 32 512" >> "output.txt"
./cute_tutorial_sgemm_2 512 32 512 >> "output.txt"

echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_1 512 32 64" >> "output.txt"
./cute_tutorial_sgemm_1 512 32 64 >> "output.txt"
echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_2 512 32 64" >> "output.txt"
./cute_tutorial_sgemm_2 512 32 64 >> "output.txt"

echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_1 512 32 128" >> "output.txt"
./cute_tutorial_sgemm_1 512 32 128 >> "output.txt"
echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_2 512 32 128" >> "output.txt"
./cute_tutorial_sgemm_2 512 32 128 >> "output.txt"

echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_1 1024 32 256" >> "output.txt"
./cute_tutorial_sgemm_1 1024 32 256 >> "output.txt"
echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_2 1024 32 256" >> "output.txt"
./cute_tutorial_sgemm_2 1024 32 256 >> "output.txt"

echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_1 1024 64 256" >> "output.txt"
./cute_tutorial_sgemm_1 1024 64 256 >> "output.txt"
echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_2 1024 64 256" >> "output.txt"
./cute_tutorial_sgemm_2 1024 64 256 >> "output.txt"


echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_1 1024 128 256" >> "output.txt"
./cute_tutorial_sgemm_1 1024 128 256 >>  "output.txt"
echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_2 1024 128 256" >> "output.txt"
./cute_tutorial_sgemm_2 1024 128 256 >> "output.txt"

echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_1 2048 32 256" >> "output.txt"
./cute_tutorial_sgemm_1 2048 32 256 >> "output.txt"
echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_2 2048 32 256" >> "output.txt"
./cute_tutorial_sgemm_2 2048 32 256 >> "output.txt"

echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_1 2048 64 256" >> "output.txt"
./cute_tutorial_sgemm_1 2048 64 256 >> "output.txt"
echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_2 2048 64 256" >> "output.txt"
./cute_tutorial_sgemm_2 2048 64 256 >> "output.txt"

echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_1 2048 128 256" >> "output.txt"
./cute_tutorial_sgemm_1 2048 128 256 >> "output.txt"
echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_2 2048 128 256" >> "output.txt"
./cute_tutorial_sgemm_2 2048 128 256 >> "output.txt"