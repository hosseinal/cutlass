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


cd build/examples/cute/tutorial/

echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_1 512 512 32" > "output.txt"
./cute_tutorial_sgemm_1 512 512 32 >> "output.txt"
echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_2 512 512 32" >> "output.txt"
./cute_tutorial_sgemm_2 512 512 32 >> "output.txt"

echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_1 512 512 64" >> "output.txt"
./cute_tutorial_sgemm_1 512 512 64 >> "output.txt"
echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_2 512 512 64" >> "output.txt"
./cute_tutorial_sgemm_2 512 512 64 >> "output.txt"

echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_1 512 512 128" >> "output.txt"
./cute_tutorial_sgemm_1 512 512 128 >> "output.txt"
echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_2 512 512 128" >> "output.txt"
./cute_tutorial_sgemm_2 512 512 128 >> "output.txt"

echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_1 1024 256 32" >> "output.txt"
./cute_tutorial_sgemm_1 1024 256 32 >> "output.txt"
echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_2 1024 256 32" >> "output.txt"
./cute_tutorial_sgemm_2 1024 256 32 >> "output.txt"

echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_1 1024 256 64" >> "output.txt"
./cute_tutorial_sgemm_1 1024 256 64 >> "output.txt"
echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_2 1024 256 64" >> "output.txt"
./cute_tutorial_sgemm_2 1024 256 64 >> "output.txt"


echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_1 1024 256 128" >> "output.txt"
./cute_tutorial_sgemm_1 1024 256 128 >>  "output.txt"
echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_2 1024 256 128" >> "output.txt"
./cute_tutorial_sgemm_2 1024 256 128 >> "output.txt"

echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_1 2048 256 32" >> "output.txt"
./cute_tutorial_sgemm_1 2048 256 32 >> "output.txt"
echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_2 2048 256 32" >> "output.txt"
./cute_tutorial_sgemm_2 2048 256 32 >> "output.txt"

echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_1 2048 256 64" >> "output.txt"
./cute_tutorial_sgemm_1 2048 256 64 >> "output.txt"
echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_2 2048 256 64" >> "output.txt"
./cute_tutorial_sgemm_2 2048 256 64 >> "output.txt"

echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_1 2048 256 128" >> "output.txt"
./cute_tutorial_sgemm_1 2048 256 128 >> "output.txt"
echo "Running Cute tutorial SGEMM examples cute_tutorial_sgemm_2 2048 256 128" >> "output.txt"
./cute_tutorial_sgemm_2 2048 256 128 >> "output.txt"