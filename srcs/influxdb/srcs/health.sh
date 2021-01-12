#! /bin/sh

# Influxdb

ps | grep -v -e grep | grep influxd
ret_val=$?
if [ $ret_val -ne 0 ]; then
	exit $ret_val
fi

# Telegraf

ps | grep -v -e grep | grep telegraf
ret_val=$?
if [ $ret_val -ne 0 ]; then
	exit $ret_val
fi