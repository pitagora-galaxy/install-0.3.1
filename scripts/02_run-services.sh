#!/bin/sh

# CREATE GALAXY SERVICE
sudo cp ./galaxy-init.sh /etc/init.d/galaxy
sudo chmod 755 /etc/init.d/galaxy

# START SERVICES
sudo service apache2 start
sudo service mysql start
sudo service acpid start
sudo service docker start
sudo service galaxy start

# AUTO START SETTING
sudo sysv-rc-conf apache2 on
sudo sysv-rc-conf mysql on
sudo sysv-rc-conf acpid on
sudo sysv-rc-conf docker on
sudo sysv-rc-conf galaxy on
