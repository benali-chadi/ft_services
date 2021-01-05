FROM	alpine

COPY	/srcs/install.sh /
RUN		sh install.sh
RUN		openrc reboot

RUN		echo "root:root" | chpasswd
COPY	srcs/vsftpd.conf /etc/vsftpd/
COPY	srcs/vsftpduserlist.conf /etc/
COPY	srcs/vsftpd.pem /etc/ssl/private/

COPY	srcs/supervisord.conf /etc/supervisord.conf
CMD		["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
