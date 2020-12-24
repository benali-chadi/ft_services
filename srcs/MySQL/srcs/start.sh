#! /bin/sh
chown -R mysql: /var/lib/mysql/
service mariadb start
mysql -u root -e "CREATE USER 'wp'@'localhost' IDENTIFIED BY '123';"
mysql -u root -e "CREATE DATABASE wp;"
mysql -u root -e "GRANT ALL PRIVILEGES ON wp.* TO wp@localhost IDENTIFIED BY '123'; FLUSH PRIVILEGES;"



/usr/bin/supervisord -c /etc/supervisord.conf