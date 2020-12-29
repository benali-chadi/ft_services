#! /bin/sh
chown -R mysql: /var/lib/mysql/
service mariadb start

mysql -u root -e "CREATE USER 'wp'@'%' IDENTIFIED BY 'wppass';"
mysql -u root -e "CREATE DATABASE wpdata;"
mysql -u root -e "GRANT ALL PRIVILEGES ON wpdata.* TO 'wp'@'%' IDENTIFIED BY 'wppass'; FLUSH PRIVILEGES;"
mysql -u root -e "CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' IDENTIFIED BY 'admin'; FLUSH PRIVILEGES;"

mariadb < /phpmyadmin.sql
mariadb < /wpdata.sql
/etc/init.d/mariadb stop

/usr/bin/supervisord -c /etc/supervisord.conf