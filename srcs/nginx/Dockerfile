FROM alpine

RUN		apk update
RUN		apk add nginx openrc openssh openssl

RUN		adduser -D -g 'www' www; mkdir /www; chown -R www:www /var/lib/nginx && chown -R www:www /www
RUN		echo "www:www" | chpasswd && echo "root:root" | chpasswd
# -D: don't assign a password, -g: GECOS field (General Comprehensive Operating System, is a field of each record in the /etc/passwd file on Unix,
#  and similar operating systems. On UNIX, it is the 5th of 7 fields in a record. )
RUN		mkdir /run/nginx && \
mkdir /run/openrc && \
touch /run/openrc/softlevel && \
rc-update add sshd && \
rc-status
RUN		echo "<h1>It works!!</h1>" > /www/index.html

COPY	srcs/default.conf /etc/nginx/conf.d/
COPY	srcs/nginx-selfsigned.crt /etc/ssl/certs/
COPY	srcs/nginx-selfsigned.key /etc/ssl/private/
COPY	srcs/sshd_config /etc/ssh/
COPY	srcs/start.sh /
COPY	srcs/health.sh /

CMD		sh start.sh