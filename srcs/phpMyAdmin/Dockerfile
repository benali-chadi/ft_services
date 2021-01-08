FROM	alpine

COPY	srcs/install.sh /
RUN		sh install.sh
RUN		adduser -D -g 'www' www; mkdir /www; chown -R www:www /www
RUN		cp -R /usr/share/webapps/phpmyadmin/* /www/
COPY	srcs/config.inc.php /etc/phpmyadmin/
RUN		chown 644 /etc/phpmyadmin/config.inc.php

RUN		chown -R www:www /var/lib/nginx
RUN		mkdir /run/nginx && \
mkdir /run/openrc && \
touch /run/openrc/softlevel && \
rc-status
COPY	srcs/default.conf /etc/nginx/conf.d/
RUN		mkdir /www/tmp; chmod 777 /www/tmp

RUN		echo "www:www" | chpasswd && echo "root:root" | chpasswd

COPY	srcs/start.sh /
COPY	srcs/health.sh /
# COPY	srcs/supervisord.conf /etc/supervisord.conf
CMD		sh start.sh