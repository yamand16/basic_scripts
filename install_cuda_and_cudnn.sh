# When you install tensorflow or pytorch with conda, appropriate cuda and cudnn tools are also installed via conda.
# However if you install yourself, you can use below command to install it.
# If you do not specify the version of them, the latest version will be installed.

# Install cuda if it is necessary
conda install -c anaconda cudatoolkit

# Install cudnn if it is necessary
conda install -c anaconda cudnn

# Install cudnn with specific version if it is necessary
#conda install -c anaconda cudnn=7.0.5
