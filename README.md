# ft_services
# Project Goal
### From the subject
***"The project consists of setting up an infrastructure of different services. To do this, you
must use Kubernetes. You will need to set up a multi-service cluster.
Each service will have to run in a dedicated container.
Each container must bear the same name as the service concerned and for performance
reasons, containers have to be build using Alpine Linux.***

***Also, they will need to have a Dockerfile written by you which is called in the setup.sh.
You will have to build yourself the images that you will use. It is forbidden to take
already build images or use services like DockerHub."***

# Resources
## For building the Docker images
### Nginx
- redirect and proxy_pass

  [301 Moved Permanently](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/301)

  [307 Temporary Redirect](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/307)

  [X-Forwarded-Proto](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Forwarded-Proto)

- ssh

  [How to copy files from one machine to another using ssh](https://unix.stackexchange.com/questions/106480/how-to-copy-files-from-one-machine-to-another-using-ssh)


  [https://wiki.alpinelinux.org/wiki/Setting_up_a_ssh-server](https://wiki.alpinelinux.org/wiki/Setting_up_a_ssh-server)

  [Nginx](https://wiki.alpinelinux.org/wiki/Nginx)

### FTPS
- vs-ftpd

    [AlpineLinux 3.6: Install vsftpd for FTP server](https://www.hiroom2.com/2017/08/22/alpinelinux-3-6-vsftpd-en/)

    [How To Configure vsftpd to Use SSL/TLS on an Ubuntu VPS | DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-configure-vsftpd-to-use-ssl-tls-on-an-ubuntu-vps)

    [FTP](https://wiki.alpinelinux.org/wiki/FTP)

    [Knowledgebase](https://www.alpineweb.com/backroom/knowledgebase/26/Configuring-and-Using-an-FTP-Client.html)

- pure-ftpd

    [Downloading Pure-FTPd](https://www.pureftpd.org/project/pure-ftpd/download/)

    [Pure-FTPd](https://wiki.archlinux.org/index.php/Pure-FTPd)

### MySQL
        
*There is no official support for MySQL in alpine from oracle*

[Mysql](https://wiki.alpinelinux.org/wiki/Mysql)

[How To Create a New User and Grant Permissions in MySQL | DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-create-a-new-user-and-grant-permissions-in-mysql)

### InfluxDB and Telegraf
- Download and Installation

    [](https://alpine.pkgs.org/edge/alpine-community-aarch64/telegraf-1.17.0-r0.apk.html)

    [How to Install TIG Stack (Telegraf, InfluxDB, and Grafana) on Ubuntu 18.04 LTS](https://www.howtoforge.com/tutorial/how-to-install-tig-stack-telegraf-influxdb-and-grafana-on-ubuntu-1804/)


[How to add "-v /var/run/docker.sock:/var/run/docker.sock" when running container from kubernetes deployment yaml](https://stackoverflow.com/questions/56462126/how-to-add-v-var-run-docker-sock-var-run-docker-sock-when-running-container)

[Configuring the Docker Telegraf Input Plugin | Blog | InfluxData](https://www.influxdata.com/blog/configuring-the-docker-telegraf-input-plugin/)

[rootnroll: online playgrounds](https://rootnroll.com/d/telegraf/)

## Services in Kubernetes
### Videos

[ClusterIP Service in Kubernetes | Coupon: UDEMYNOV20 - Kubernetes Made Easy | Kubernetes Tutorial](https://www.youtube.com/watch?v=dVDElh_Kd48)

[Kubernetes Service And Service Types | Nodeport, ClusterIP, LoadBalancer + Manifest YAML](https://www.youtube.com/watch?v=sGZx3OjMPQI)

[Kubernetes - Services Explained in 15 Minutes!](https://www.youtube.com/watch?v=5lzUpDtmWgM)

### Articles

[Deploy to Kubernetes](https://docs.docker.com/get-started/kube-deploy/)

[Connecting Applications with Services](https://kubernetes.io/docs/concepts/services-networking/connect-applications-service/)

[Service](https://kubernetes.io/docs/concepts/services-networking/service/)

## Load Balancer
    
[Kubernetes NodePort vs LoadBalancer vs Ingress? When should I use what?](https://medium.com/google-cloud/kubernetes-nodeport-vs-loadbalancer-vs-ingress-when-should-i-use-what-922f010849e0)

[Create an External Load Balancer](https://kubernetes.io/docs/tasks/access-application-cluster/create-external-load-balancer/)

[MetalLB](https://metallb.universe.tf/)

## Managing Volumes
    
[Persistent Volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/)

[Example: Deploying WordPress and MySQL with Persistent Volumes](https://kubernetes.io/docs/tutorials/stateful-application/mysql-wordpress-persistent-volume/)

## Checking the containers with Liveness Prob
    
[Kubernetes Health Checks with Readiness and Liveness Probes](https://www.youtube.com/watch?v=mxEvAPQRwhw)

[Kubernetes 101: Get Better Uptime with K8s Health Checks](https://www.youtube.com/watch?v=D9w3DH1zAc8)

[Configure Liveness, Readiness and Startup Probes](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/)
