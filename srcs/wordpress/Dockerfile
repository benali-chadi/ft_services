FROM	alpine

# RUN		apk update
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


COPY	srcs/supervisord.conf /etc/supervisord.conf
CMD		["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
# docker build .  -t my-wp
# docker run -it --name wp -p 5050:5050 wp 