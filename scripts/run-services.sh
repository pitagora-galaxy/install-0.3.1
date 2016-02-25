#!/bin/sh

sudo service httpd start
sudo service mysqld start
sudo service galaxy start

sudo chkconfig galaxy on
sudo chkconfig httpd on
sudo chkconfig mysqld on

sudo chkconfig --list
