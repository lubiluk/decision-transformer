#!/bin/bash
sbatch <<EOT
#!/bin/bash
#SBATCH --job-name=$1
#SBATCH --time=48:00:00
#SBATCH --account=plgfactoryrl-gpu-a100
#SBATCH --partition=plgrid-gpu-a100
#SBATCH --cpus-per-task=1
#SBATCH --mem=32G
#SBATCH --gres=gpu
#SBATCH --output=$SCRATCH/output/slurm-%j.out


echo "Setting up..."
source ~/miniconda3/bin/activate 
conda activate $SCRATCH/venv_mujoco/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/net/people/plgrid/plglubiluk/.mujoco/mujoco210/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/nvidia
echo "Running..."
python $@
echo "Done!"
EOT
