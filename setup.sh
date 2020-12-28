
# Start minikube
minikube start
eval $(minikube docker-env)
minikube addons enable metallb

# Build images
docker build srcs/nginx/ -t my-nginx
docker build srcs/phpMyAdmin/ -t my-pma
docker build srcs/wordpress/ -t my-wp
docker build srcs/MySQL/ -t my-mysql
docker build srcs/ftps/ -t my-ftps

# Apply the yaml files
kubectl apply -f srcs/yaml_files/metallb.yaml
kubectl apply -f srcs/yaml_files/nginx.yaml
kubectl apply -f srcs/yaml_files/phpmyadmin.yaml
kubectl apply -f srcs/yaml_files/wordpress.yaml
kubectl apply -f srcs/yaml_files/mysql.yaml
kubectl apply -f srcs/yaml_files/ftps.yaml