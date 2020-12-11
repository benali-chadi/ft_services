FROM	alpine

COPY	srcs/install.sh /
RUN		sh install.sh

COPY	srcs/supervisord.conf /etc/supervisord.conf
CMD		["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]

# docker build . -t my_mysql
# docker run -it --name my_mysql my_mysql