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

# Activate virtualenv if present (optional)
if [ -f "venv/bin/activate" ]; then
	# shellcheck disable=SC1091
	source venv/bin/activate
else
	echo "No virtualenv found at venv/ — continuing without it"
fi

# Prefer nvcc from PATH for CMake/CUDA detection if available
if command -v nvcc >/dev/null 2>&1; then
	export CUDACXX="$(command -v nvcc)"
	echo "Using nvcc at ${CUDACXX}"
else
	echo "Warning: nvcc not found in PATH — CMake may fail to find CUDA"
fi

# Configure with only examples enabled and target Ampere (SM80)
cmake -S . -B build \
	-DCMAKE_BUILD_TYPE=Release \
	-DCUTLASS_ENABLE_EXAMPLES=ON \
	-DCUTLASS_NVCC_ARCHS="80" \
	-DCMAKE_CXX_STANDARD=17 \
	-DCMAKE_CUDA_STANDARD=17 \
	-DCMAKE_CXX_EXTENSIONS=OFF \
	-DCMAKE_CXX_STANDARD_REQUIRED=ON

# Build only the two Cute tutorial sgemm examples to avoid building entire tree
cmake --build build --target cute_tutorial_sgemm_1 --parallel $(nproc)
cmake --build build --target cute_tutorial_sgemm_2 --parallel $(nproc)