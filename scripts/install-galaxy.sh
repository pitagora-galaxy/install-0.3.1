#!/bin/sh

# INSTALLING PYTHON
mkdir ~/galaxy-python
cd ~/galaxy-python
wget http://www.python.org/ftp/python/2.7.11/Python-2.7.11.tgz
mkdir install
tar xvzf Python-2.7.11.tgz
cd Python-2.7.11
./configure --prefix=/home/galaxy/galaxy-python/install
make
make install

# SETTING ENVIRONMENTAL VARIABLES
which python
echo 'export PATH=$HOME/galaxy-python/install/bin:$PATH' >> ~/.bash_profile
echo 'export PYTHONPATH=$HOME/galaxy-python/install/lib/python2.11/site-packages' >> ~/.bash_profile
source .bash_profile
which python
python --version

# INSTALLING GALAXY
git clone https://github.com/galaxyproject/galaxy/
cd galaxy
./run.sh
tail -f paster.log

