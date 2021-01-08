FROM	alpine

COPY	/srcs/install.sh /
RUN		sh install.sh
RUN		openrc reboot

RUN		echo "root:root" | chpasswd
COPY	srcs/vsftpd.conf /etc/vsftpd/
COPY	srcs/vsftpduserlist.conf /etc/
COPY	srcs/vsftpd.pem /etc/ssl/private/

COPY	srcs/start.sh /
COPY	srcs/health.sh /

CMD		sh start.sh
