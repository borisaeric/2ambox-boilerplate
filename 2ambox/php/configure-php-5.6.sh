echo 'START ----> Configuring PHP 5.6 FPM <----'

sudo unlink /etc/php/5.6/fpm/php.ini
sudo unlink /etc/php/5.6/fpm/php-fpm.conf
sudo unlink /etc/php/5.6/fpm/pool.d/www.conf

sudo ln -s /var/www/2ambox/php/5.6/php.ini /etc/php/5.6/fpm/php.ini
sudo ln -s /var/www/2ambox/php/5.6/www.conf /etc/php/5.6/fpm/pool.d/www.conf
sudo ln -s /var/www/2ambox/php/5.6/php-fpm.conf /etc/php/5.6/fpm/php-fpm.conf

sudo service php5.6-fpm restart

echo 'END ----> Configuring PHP 5.6 FPM <----'
