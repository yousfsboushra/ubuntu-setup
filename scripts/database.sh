#!/bin/sh

apt install mysql-server -y
echo "******************************************************"
echo ""
echo "Reminder"
echo ""
echo ""
echo "Enter very strong password in the next step, or just enter Cu_t0mStrongP@ssw0rd"
echo ""
echo ""
echo ""
echo "******************************************************"
mysql_secure_installation utility

service mysql restart

mysql -uroot << EOF

CREATE USER 'cofo'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON * . * TO 'cofo'@'localhost';
FLUSH PRIVILEGES;
quit

EOF

service mysql restart

apt-get install -y phpmyadmin

echo "******************************************************"
echo ""
echo ""
echo "In the next step, add the below 2 lines at the end of apache2.conf file, save and close it."
echo ""
echo "# Include phpmyadmin configurations:"
echo "IncludeOptional /etc/phpmyadmin/apache.conf"
echo ""
echo ""
echo "******************************************************"

gedit /etc/apache2/apache2.conf
service apache2 restart

echo "Mysql has been installed and configured..."
echo "Your username and password: cofo / P@ssw0rd"
echo "Save them and press any key to continue"
read con

apt install -y mongodb
systemctl status mongodb
echo "Mongo has been installed and configured..."
