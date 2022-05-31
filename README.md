# ft_services
# Brief description of the project
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
