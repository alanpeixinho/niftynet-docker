#cuda9
from alanpeixinho/tensorflow:cuda-9.2_tf-1.12.2

maintainer Alan Peixinho (alanpeixinho81@gmail.com)

run apt-get update -y && apt-get install -y libblas-dev liblapack-dev gfortran git && rm -rf /var/lib/apt/lists

#run ln -s /usr/local/cuda/lib64/stubs/libcuda.so  /usr/local/cuda/lib64/stubs/libcuda.so.1 

run ls /usr/local/cuda/lib64/stubs

env LD_LIBRARY_PATH /usr/local/cuda/lib64/stubs

run whereis libcuda.so.1

run python3 -c "import tensorflow; print(tensorflow.__version__)"

run pip3 install NiftyNet==0.5.0 numpy==1.15.2

run pip3 install git+https://github.com/alanpeixinho/NiftyNet.git@dev

run python3 -c "import niftynet; print(niftynet.__version__)"

#run rm /usr/local/cuda/lib64/stubs/libcuda.so.1

#run python -c "import niftynet; print(niftynet.__version__)"


