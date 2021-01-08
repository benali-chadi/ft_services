#! /bin/sh

nginx -g "daemon off;"

/etc/init.d/php-fpm7 start

#! /bin/sh

nginx -g "daemon off;"
rc-service php-fpm7 start

while true
do
	sleep 1;
done
