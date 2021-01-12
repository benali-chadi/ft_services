
# Start minikube
minikube delete
minikube start
eval $(minikube docker-env)
minikube addons enable metallb

# Build images
docker build srcs/nginx/ -t nginx
docker build srcs/phpMyAdmin/ -t phpmyadmin
docker build srcs/wordpress/ -t wordpress
docker build srcs/MySQL/ -t mysql
docker build srcs/ftps/ -t ftps
docker build srcs/influxdb -t influxdb
docker build srcs/grafana/ -t grafana

# Apply the yaml files
kubectl apply -f srcs/yaml_files/.

# Launch the dashboard
minikube dashboard &