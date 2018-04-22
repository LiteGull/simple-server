#! /usr/bin/bash

sudo su
# Updates all yum packages
yum update -y

# Install Apache & Figlet
yum install httpd -y
yum install git -y

# Create simple html file
git clone https://github.com/SteveMcArthur/simple-blog.git /var/www/html

# Start HTTP service
service httpd start

# Ensure httpd starts on boot
chkconfig httpd on
