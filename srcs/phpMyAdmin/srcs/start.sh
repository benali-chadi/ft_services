#! /bin/sh

php-fpm7
nginx -g "daemon off;"
# rc-service php-fpm7 start
# while true
# do
# 	sleep 1;
# done
