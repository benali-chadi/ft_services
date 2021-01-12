#! /bin/sh

# Nginx

ps | grep -v -e grep | grep nginx
ret_val=$?
if [ $ret_val -ne 0 ]; then
	exit $ret_val
fi

# SSH

ps | grep -v -e grep | grep sshd
ret_val=$?
if [ $ret_val -ne 0 ]; then
	exit $ret_val
fi
