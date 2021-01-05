#! /bin/sh

echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

apk update && apk add openrc influxdb supervisor
apk add --upgrade telegraf