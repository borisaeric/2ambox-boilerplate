# -*- mode: ruby -*-
# vi: set ft=ruby :

$vagrantBoxIP = "192.168.33.22"
$vagrantHosts = "php56.local php70.local php71.local php72.local php73.local"
$vagrantBoxName = "borisaeric-2ambox"

def is_windows?
  return ENV.key?('windir')
end

def running_in_admin_mode?
  (`reg query HKU\\S-1-5-19 2>&1` =~ /ERROR/).nil?
end

abort("Please run vagrant as an adminstrator.") if !running_in_admin_mode? && is_windows?

Vagrant.configure("2") do |config|
  config.vm.box = "borisaeric/2ambox"

  config.vm.network "forwarded_port", guest: 1080, host: 1080
  
  config.vm.network "private_network", ip: $vagrantBoxIP

  config.vm.hostname = $vagrantBoxName

  config.vm.synced_folder ".", "/var/www", :mount_options => ["dmode=777", "fmode=777"]

  config.vm.provider :virtualbox do |vb|
    vb.name = $vagrantBoxName
    vb.customize ["modifyvm", :id, "--memory", 4096]
    vb.customize [ "modifyvm", :id, "--uartmode1", "disconnected"]
    vb.customize ["modifyvm", :id, "--cableconnected1", "on"]
  end

  config.ssh.private_key_path = File.dirname(__FILE__) + "/2ambox/ssh/vagrant_private_key"

  config.vm.provision "shell", path: "2ambox/provision.sh"
  config.vm.provision "shell", path: "2ambox/configure-nginx.sh", run: "always", privileged: true
  config.vm.provision "shell", path: "2ambox/configure-default-php.sh", run: "always", privileged: true

  config.vm.provision "shell", path: "2ambox/php/configure-php-5.6.sh", run: "always", privileged: true
  config.vm.provision "shell", path: "2ambox/php/configure-php-7.0.sh", run: "always", privileged: true
  config.vm.provision "shell", path: "2ambox/php/configure-php-7.1.sh", run: "always", privileged: true
  config.vm.provision "shell", path: "2ambox/php/configure-php-7.2.sh", run: "always", privileged: true
  config.vm.provision "shell", path: "2ambox/php/configure-php-7.3.sh", run: "always", privileged: true

  config.vm.provision "shell", path: "2ambox/configure-motd.sh", run: "always", privileged: true
  config.vm.provision "shell", path: "2ambox/configure-mailcatcher.sh", run: "always", privileged: true
  config.vm.provision "shell", path: "2ambox/configure-symlinks.sh", run: "always", privileged: true
  config.vm.provision "shell", path: "2ambox/configure-mysql.sh", run: "always", privileged: true

  config.vm.provision "shell", path: "2ambox/configure-node.sh", run: "always", privileged: false
  config.vm.provision "shell", path: "2ambox/configure-composer.sh", run: "always", privileged: false

  config.vm.provision "shell", run: "always", privileged: false, inline: <<-EOF
  echo "Your vagrant machine is loaded at hosts config: #{$vagrantBoxIp} #{$vagrantHosts}"
  echo "Please add this configuration in your hosts file located on /etc/hosts on Linux od Windows/System32/drivers/etc/hosts on Windows."
  echo "Mailcatcher is available at http://localhost:1080."
EOF
end