#! /bin/sh

apk update; apk add mysql mysql-client openrc supervisor
openrc reboot
/etc/init.d/mariadb setup