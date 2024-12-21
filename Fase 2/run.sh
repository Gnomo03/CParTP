#!/bin/sh
#
#SBATCH --partition=cpar  # partition (queue)
#SBATCH --exclusive       # exclusive allocation
#SBATCH --time=02:00      # allocation for 3 minutes
#SBATCH --cpus-per-task=40

module load gcc/11.2.0
make clean
make

# Array of thread counts
threads=(1 2 4 8 12 16 20 24 28 32 36 40)

# Loop through each thread count
for t in "${threads[@]}"
do
  export OMP_NUM_THREADS=$t  # Set number of threads
  echo "Running with $OMP_NUM_THREADS threads"
  time ./fluid_sim           # Run the simulation
  echo                       # Blank line for readability
done