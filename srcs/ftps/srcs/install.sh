#! /bin/sh

apk update
apk add openrc openssl supervisor vsftpd
# build-base


## pure-ftpd installation ##
# apk add openrc openssl build-base
# wget "https://download.pureftpd.org/pub/pure-ftpd/releases/pure-ftpd-1.0.49.tar.gz"
# tar zxvf pure-ftpd-1.0.49.tar.gz
# cd /pure-ftpd-1.0.49/ && ./configure && make install-strip

## To start pure-ftpd ##
# /usr/local/sbin/pure-ftpd