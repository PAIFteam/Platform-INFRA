docker build -t users-api:local -f docker/users/Dockerfile ..
docker build -t payments-api:local -f docker/payments/Dockerfile ..
docker build -t notifications-api:local -f docker/notifications/Dockerfile ..
docker build -t catalog-api:local -f docker/catalog/Dockerfile ..

kubectl apply -f k8s/infra
kubectl apply -f k8s/users
kubectl apply -f k8s/payments
kubectl apply -f k8s/notifications
kubectl apply -f k8s/catalog

kubectl port-forward -n paif svc/sqlserver 1433:1433