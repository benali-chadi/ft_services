FROM	alpine

# RUN		apk update && apk add nginx openrc openssl supervisor
# RUN		apk add php7-fpm php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom
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

RUN		echo "www:www" | chpasswd && echo "root:root" | chpasswd

COPY	srcs/supervisord.conf /etc/supervisord.conf
CMD		["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]

# docker build . -t pma
# docker run -it --name pma -p 5000:5000 pma