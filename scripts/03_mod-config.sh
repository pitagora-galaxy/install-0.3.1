#/bin/sh

# CREATE MYSQL DATABASE AND USER
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
sudo service apache2 restart
sudo cp ./000-default.conf /etc/apache2/sites-available/
sudo cp ./.htaccess /var/www/html/
sudo chmod 644 /etc/apache2/sites-available/000-default.conf
sudo chmod 644 /var/www/html/.htaccess






# MODIFY GALAXY CONFIG
cp ../config/galaxy.ini ~/galaxy-dist/config/
sudo service galaxy restart

