#/bin/sh

# CREATE GALAXY SERVICE
sudo cp ./galaxy-init.sh /etc/init.d/galaxy
sudo chmod 755 /etc/init.d/galaxy

# CREATE MYSQL DATABASE AND USER
sudo service mysql start
mysql -u root -pgalaxy < create.sql
echo 'exit' | mysql -u galaxy -pgalaxy -D galaxy

# ADD DISKS
sudo mkfs -t ext4 /dev/xvdb
sudo mkfs -t ext4 /dev/xvdc
sudo mkdir -p /disk/reference
sudo mkdir -p /disk/database
echo '/dev/xvdb /disk/reference ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/xvdc /disk/database  ext4 defaults 0 0' | sudo tee -a /etc/fstab
sudo mount -a
sudo chown ubuntu:ubuntu /disk/reference
sudo chown ubuntu:ubuntu /disk/database

# MOVE DATA DIRECTORY
cp -r ~/galaxy/database/* /disk/database/
mv ~/galaxy/database ~/galaxy/database_bak
ln -s /disk/database ~/galaxy/database
ls -l ~/galaxy/database

# HTTP PROXY
sudo a2enmod rewrite proxy proxy_http
sudo cp ./000-default.conf /etc/apache2/sites-available/
sudo cp ./.htaccess /var/www/html/
sudo chmod 644 /etc/apache2/sites-available/000-default.conf
sudo chmod 644 /var/www/html/.htaccess
sudo service apache2 restart

# MODIFY GALAXY CONFIG
cp ../config/galaxy.ini ~/galaxy/config/
sudo service galaxy start

# START SERVICES
sudo service acpid start
sudo service docker start

# AUTO START SETTING
sudo sysv-rc-conf apache2 on
sudo sysv-rc-conf mysql on
sudo sysv-rc-conf acpid on
sudo sysv-rc-conf docker on
sudo sysv-rc-conf galaxy on
