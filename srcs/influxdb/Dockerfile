FROM alpine

COPY srcs/install.sh /
COPY srcs/start.sh /

RUN  sh install.sh

ENV TELEGRAF_CONFIG_PATH="/etc/telegraf.conf"

COPY srcs/telegraf.conf /etc/

CMD sh start.sh


# docker build . -t influxdb

# influx -execute "CREATE USER telegraf WITH PASSWORD '123456'"
# influx -execute "CREATE DATABASE telegraf"
# influx -execute "GRANT ALL TO telegraf"
# CREATE DATABASE telegraf
# CREATE USER telegraf WITH PASSWORD 'telegraf'
