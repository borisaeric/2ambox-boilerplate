echo 'START ----> Configuring nxing <----'

sudo rm -r /etc/nginx/sites-enabled
sudo rm -r /etc/nginx/sites-available

sudo ln -s /var/www/2ambox/nginx/ /etc/nginx/sites-enabled
sudo ln -s /var/www/2ambox/nginx/ /etc/nginx/sites-available

sudo service nginx restart

echo 'END ----> Configuring nginx <----'
