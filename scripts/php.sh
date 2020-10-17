#!/bin/sh

apt install apache2 -y

apt-get install software-properties-common -y
add-apt-repository ppa:ondrej/php -y
apt-get update -y

apt install php5.6 php5.6-{mysql,pgsql,curl,gd,mcrypt,xmlrpc,xsl,zip,mbstring} -y
apt install php7.0 php7.0-{mysql,pgsql,curl,gd,mcrypt,xmlrpc,xsl,zip,mbstring} -y
apt install php7.1 php7.1-{mysql,pgsql,curl,gd,mcrypt,xmlrpc,xsl,zip,mbstring} -y
apt install php7.2 php7.2-{mysql,pgsql,curl,gd,xmlrpc,xsl,zip,mbstring} -y
apt install php7.3 php7.3-{mysql,pgsql,curl,gd,xmlrpc,xsl,zip,mbstring} -y
apt install php7.4 php7.4-{mysql,pgsql,curl,gd,xmlrpc,xsl,zip,mbstring} -y

a2dismod php5.6
a2dismod php7.0
a2dismod php7.1
a2dismod php7.2
a2dismod php7.3
a2enmod php7.4

echo "Apache and PHP have been installed and configured..."
