#!/bin/bash

# INSTALLING OS PACKAGES
sudo apt-get install -y sysv-rc-conf gcc make libsqlite3-dev libncurses5-dev zlib1g-dev libbz2-dev libssl-dev
sudo apt-get install -y mysql-server libmysqlclient-dev
sudo apt-get install -y apache2 vsftpd acpid
sudo apt-get install -y linux-image-extra-$(uname -r)
sudo apt-get install -y docker-engine
sudo apt-get install -y default-jdk gfortran g++

# INSTALLING PYTHON
mkdir ~/galaxy-python
cd ~/galaxy-python
wget http://www.python.org/ftp/python/2.7.11/Python-2.7.11.tgz
mkdir install
tar xvzf Python-2.7.11.tgz
cd Python-2.7.11
./configure --prefix=/home/ubuntu/galaxy-python/install
make
make install

# SETTING ENVIRONMENTAL VARIABLES
which python
echo 'export PATH=$HOME/galaxy-python/install/bin:$PATH' >> ~/.profile
echo 'export PYTHONPATH=$HOME/galaxy-python/install/lib/python2.11/site-packages' >> ~/.profile
export PATH=$HOME/galaxy-python/install/bin:$PATH
export PYTHONPATH=$HOME/galaxy-python/install/lib/python2.11/site-packages
which python
python --version

# INSTALLING GALAXY
cd
git clone https://github.com/galaxyproject/galaxy/
cd galaxy
./run.sh 
