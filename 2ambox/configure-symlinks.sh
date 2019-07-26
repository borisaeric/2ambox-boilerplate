echo 'START ----> Configuring symlinks <----'

[ -f ~/.bash_aliases ] && sudo unlink ~/.bash_aliases
sudo ln -s /var/www/2ambox/bash/.bash_aliases ~/.bash_aliases

echo 'START ----> Configuring symlinks <----'
