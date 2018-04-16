#! /usr/bin/bash
sudo rpm -Uvh https://yum.puppet.com/puppet5/puppet5-release-el-7.noarch.rpm
sudo yum install puppet-agent -y
sudo /opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true
sudo yum install figlet -y
sudo figlet "Hello World" > /etc/motd
