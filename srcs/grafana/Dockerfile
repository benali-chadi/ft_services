FROM alpine

COPY srcs/start.sh /
RUN apk update && apk add openrc libc6-compat
RUN wget https://dl.grafana.com/enterprise/release/grafana-enterprise-7.3.6.linux-amd64.tar.gz; \
	tar -zxvf grafana-enterprise-7.3.6.linux-amd64.tar.gz
COPY srcs/grafana.db /grafana-7.3.6/data/

CMD sh start.sh

# grafana-7.3.6/data/grafana.db