# This script is for Python 3

# Download miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# Install it
sh Miniconda3-latest-Linux-x86_64.sh

# Create conda environment that has python version 3
conda create -n conda_env python=3

# Activate conda environment that we created 
conda activate conda_env
