# This script is for Python 3

# Download miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# Install it
sh Miniconda3-latest-Linux-x86_64.sh

# Create conda environment that has python version 3
conda create -n conda_env python=3

# Activate conda environment that we created 
conda activate conda_env

# Install OpenCV
conda install -c conda-forge opencv

# Install TensorFlow with gpu 
conda install -c conda-forge tensorflow-gpu

# For specify the version, use == version_name
# Example:
# conda install -c conda-forge tensorflow-gpu==1.7

# In order to install TensorFlow 2.0:
# pip install tensorflow-gpu==2.0.0-beta1 

# Install PyTorch
#conda install -c pytorch pytorch

# Install Torch Vision
#conda install -c pytorch torchvision

# Alternative way to install PyTorch and Torch Vision with Specific Cuda
conda install pytorch torchvision cudatoolkit=10.1 -c pytorch
# You can use below link to get appropriate PyTorch installation command for your system.
#https://pytorch.org/

# When you install tensorflow or pytorch with conda, appropriate cuda and cudnn tools are also installed via conda.
# However if you install yourself, you can use below command to install it.
# If you do not specify the version of them, the latest version will be installed.

# Install cuda if it is necessary
#conda install -c anaconda cudatoolkit

# Install cudnn if it is necessary
#conda install -c anaconda cudnn

# Install cudnn with specific version if it is necessary
#conda install -c anaconda cudnn=7.0.5
