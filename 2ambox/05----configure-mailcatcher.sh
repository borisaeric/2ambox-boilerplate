echo 'START ----> Configuring mailcatcher <----'

sudo iptables -I INPUT -j ACCEPT
/home/vagrant/.rvm/gems/ruby-2.6.3/wrappers/mailcatcher --smtp-ip 0.0.0.0 --smtp-port 1025 --http-ip 0.0.0.0 --http-port 1080  >/dev/null 2>&1

echo 'END ----> Configuring mailcatcher <----'
