
# Start minikube
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
# kubectl apply -f srcs/yaml_files/metallb.yaml
# kubectl apply -f srcs/yaml_files/nginx.yaml
# kubectl apply -f srcs/yaml_files/phpmyadmin.yaml
# kubectl apply -f srcs/yaml_files/wordpress.yaml
# kubectl apply -f srcs/yaml_files/mysql.yaml
# kubectl apply -f srcs/yaml_files/ftps.yaml