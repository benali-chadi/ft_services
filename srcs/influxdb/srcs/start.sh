#! /bin/sh

# openrc reboot
# rc-service influx restart
influxd run -config /etc/influxdb.conf &

influx -execute "CREATE USER telegraf WITH PASSWORD '123456'"
# influx -execute "CREATE DATABASE telegraf"
influx -execute "GRANT ALL TO telegraf"

usr/bin/telegraf