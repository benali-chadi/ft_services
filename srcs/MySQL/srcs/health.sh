#! /bin/sh

ps | grep -v -e grep | grep mysql
ret_val=$?
if [ $ret_val -ne 0 ]; then
	exit $ret_val
fi