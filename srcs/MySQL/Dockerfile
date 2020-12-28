FROM	alpine

COPY	srcs/install.sh /
COPY	srcs/start.sh /
RUN		sh install.sh
COPY 	srcs/mariadb-server.cnf /etc/my.cnf.d/
COPY	srcs/supervisord.conf /etc/supervisord.conf
COPY	srcs/phpmyadmin.sql /
# COPY	srcs/wp_users.sql	/
# CMD		["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
CMD		sh start.sh

# docker build . -t my-mysql
# docker run -it --name my_mysql my-mysql