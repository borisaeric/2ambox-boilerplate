echo 'START ----> Configuring PHP 7.3 FPM <----'

sudo unlink /etc/php/7.3/fpm/php.ini
sudo unlink /etc/php/7.3/fpm/php-fpm.conf
sudo unlink /etc/php/7.3/fpm/pool.d/www.conf

sudo ln -s /var/www/2ambox/php/7.3/php.ini /etc/php/7.3/fpm/php.ini
sudo ln -s /var/www/2ambox/php/7.3/www.conf /etc/php/7.3/fpm/pool.d/www.conf
sudo ln -s /var/www/2ambox/php/7.3/php-fpm.conf /etc/php/7.3/fpm/php-fpm.conf

sudo service php7.3-fpm restart

echo 'END ----> Configuring PHP 7.3 FPM <----'
