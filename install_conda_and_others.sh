# This script is for Python 3

# Download miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# Install it
sh Miniconda3-latest-Linux-x86_64.sh

# Create conda environment
conda create -n conda_env python=3

# Install OpenCV
conda install -c conda-forge opencv

# Install tensorflow with gpu 
conda install -c conda-forge tensorflow-gpu

# For specify the version, use ==version_name
# Example:
# conda install -c conda-forge tensorflow-gpu==1.7

# Install Pytorch
conda install -c pytorch pytorch
