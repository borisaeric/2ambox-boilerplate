echo 'START ----> Configuring PHP 7.1 FPM <----'

sudo unlink /etc/php/7.1/fpm/php.ini
sudo unlink /etc/php/7.1/fpm/php-fpm.conf
sudo unlink /etc/php/7.1/fpm/pool.d/www.conf

sudo ln -s /var/www/2ambox/php/7.1/php.ini /etc/php/7.1/fpm/php.ini
sudo ln -s /var/www/2ambox/php/7.1/www.conf /etc/php/7.1/fpm/pool.d/www.conf
sudo ln -s /var/www/2ambox/php/7.1/php-fpm.conf /etc/php/7.1/fpm/php-fpm.conf

sudo service php7.1-fpm restart

echo 'END ----> Configuring PHP 7.1 FPM <----'
