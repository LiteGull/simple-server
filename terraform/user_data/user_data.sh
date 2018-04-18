#! /usr/bin/bash

sudo yum update -y

sudo rpm -Uvh https://yum.puppet.com/puppet5/puppet5-release-el-7.noarch.rpm
sudo yum install puppet-agent -y
sudo /opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true

sudo yum install httpd -y

puppet apply --modulepath=/home/ec2-user