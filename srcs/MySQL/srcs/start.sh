#! /bin/sh
/etc/init.d/mariadb setup
service mariadb start

mysql -u root -e "CREATE USER 'wp'@'%' IDENTIFIED BY 'wppass';"
mysql -u root -e "CREATE DATABASE wpdata;"
mysql -u root -e "GRANT ALL PRIVILEGES ON wpdata.* TO 'wp'@'%' IDENTIFIED BY 'wppass'; FLUSH PRIVILEGES;"
mysql -u root -e "CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' IDENTIFIED BY 'admin'; FLUSH PRIVILEGES;"

mariadb < /phpmyadmin.sql
mariadb < /wpdata.sql
/etc/init.d/mariadb stop

/usr/bin/mysqld_safe --datadir='/var/lib/mysql'
# /usr/bin/supervisord -c /etc/supervisord.conf