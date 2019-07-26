echo 'START ----> Configuring mysql <----'

echo 'Remove existing mysql files'
[ -f /etc/mysql/mysql.conf.d/mysqld.cnf ] && sudo unlink /etc/mysql/mysql.conf.d/mysqld.cnf
[ -f /etc/mysql/conf.d/mysql.cnf ] && sudo unlink /etc/mysql/conf.d/mysql.cnf

echo 'Copy new mysql config files'
sudo cp /var/www/2ambox/mysql/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
sudo cp /var/www/2ambox/mysql/mysql.cnf /etc/mysql/conf.d/mysql.cnf

echo 'Setting chmod for mysql config files'
sudo chmod 0644 /etc/mysql/mysql.conf.d/mysqld.cnf
sudo chmod 0644 /etc/mysql/conf.d/mysql.cnf

echo "Restart mysql service..."
sudo service mysql restart

echo 'END ----> Configuring mysql <----'
