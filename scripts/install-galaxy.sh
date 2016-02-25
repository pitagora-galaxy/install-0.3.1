#!/bin/sh

# INSTALLING PYTHON
mkdir ~/galaxy-python
cd ~/galaxy-python
wget http://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz
mkdir install
tar xvzf Python-2.7.9.tgz
cd Python-2.7.9
./configure --prefix=/home/galaxy/galaxy-python/install
make
make install

# INSTALLING PIP
cd ~/galaxy-python
wget "https://bootstrap.pypa.io/get-pip.py"
python get-pip.py

# INSTALLING MERCURIAL
cd ~/
hg clone https://bitbucket.org/galaxy/galaxy-dist/
cd ~/galaxy-dist
./run.sh --daemon
tail -f paster.log

