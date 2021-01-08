FROM	alpine

COPY	srcs/install.sh /
RUN		sh install.sh
RUN		adduser -D -g 'www' www; mkdir /www; chown -R www:www /www

RUN		chown -R www:www /var/lib/nginx
RUN		mkdir /run/nginx && \
mkdir /run/openrc && \
touch /run/openrc/softlevel && \
rc-status
COPY	srcs/default.conf /etc/nginx/conf.d/

RUN		echo "www:www" | chpasswd && echo "root:root" | chpasswd
RUN		chown -R www:www wordpress/ && \
mv wordpress/* /www/ && \
rm -rf wordpress latest.tar.gz
COPY	srcs/wp-config.php /www/

COPY	/srcs/start.sh /
COPY	/srcs/health.sh /

# COPY	srcs/supervisord.conf /etc/supervisord.conf
CMD		sh start.sh