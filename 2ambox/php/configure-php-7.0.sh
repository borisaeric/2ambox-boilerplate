echo 'START ----> Configuring PHP 7.0 FPM <----'

sudo unlink /etc/php/7.0/fpm/php.ini
sudo unlink /etc/php/7.0/fpm/php-fpm.conf
sudo unlink /etc/php/7.0/fpm/pool.d/www.conf

sudo ln -s /var/www/2ambox/php/7.0/php.ini /etc/php/7.0/fpm/php.ini
sudo ln -s /var/www/2ambox/php/7.0/www.conf /etc/php/7.0/fpm/pool.d/www.conf
sudo ln -s /var/www/2ambox/php/7.0/php-fpm.conf /etc/php/7.0/fpm/php-fpm.conf

sudo service php7.0-fpm restart

echo 'END ----> Configuring PHP 7.0 FPM <----'
