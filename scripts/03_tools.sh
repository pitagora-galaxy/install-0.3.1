#/bin/bash

# INSTALL PYTHON PACKAGES
sudo curl -kL https://bootstrap.pypa.io/get-pip.py | python
pip install pycrypto six

# INSTALL GALAXY TOOLS
sh install-tools.sh $1

# SET SAMTOOLS PATH
echo 'export PATH=$HOME/tool_dependency/samtools/0.1.19/devteam/package_samtools_0_1_19/95d2c4aefb5f/bin:$PATH' >> ~/.profile
