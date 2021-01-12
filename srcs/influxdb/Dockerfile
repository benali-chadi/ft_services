FROM alpine

COPY srcs/install.sh /
COPY srcs/start.sh /

RUN  sh install.sh

ENV TELEGRAF_CONFIG_PATH="/etc/telegraf.conf"

COPY srcs/influxdb.conf /etc/
COPY srcs/telegraf.conf /etc/
COPY srcs/health.sh /

CMD sh start.sh