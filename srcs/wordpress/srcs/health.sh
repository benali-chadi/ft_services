#! /bin/sh

# Nginx

ps | grep -v -e grep | grep nginx
ret_val=$?
if [ $ret_val -ne 0 ]; then
	exit $ret_val
fi

# Php-fpm

ps | grep -v -e grep | grep php-fpm
ret_val=$?
if [ $ret_val -ne 0 ]; then
	exit $ret_val
fi