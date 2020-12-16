FROM	alpine

COPY	/srcs/install.sh /
RUN		sh install.sh
RUN		openrc reboot

RUN		adduser -D 'ftpuser'
RUN		echo "ftpuser:123456" | chpasswd
RUN 	mkdir /home/ftpuser/ftp && chown nobody:nogroup /home/ftpuser/ftp
RUN		chmod a-w /home/ftpuser/ftp/
RUN		mkdir /home/ftpuser/ftp/files && chown ftpuser:ftpuser /home/ftpuser/ftp/files
COPY	srcs/vsftpd.conf /etc/vsftpd/
COPY	srcs/vsftpduserlist.conf /etc/
COPY	srcs/vsftpd.pem /etc/ssl/private/
ARG 	IP
ENV		DM_IP=${IP}
RUN		echo "pasv_address=$DM_IP" >> /etc/vsftpd/vsftpd.conf

COPY	srcs/supervisord.conf /etc/supervisord.conf
# EXPOSE 	21 21000
CMD		["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]

# docker build --build-arg IP=$(docker-machine ip) . -t my_ftps
# docker run -it --name my_ftps -p 21:21 -p 31110:31110 -p 31111:31111 my_ftps
# /usr/sbin/pure-ftpd -p 21000:21010 -P 192.168.99.104 
# $ip -Y 2