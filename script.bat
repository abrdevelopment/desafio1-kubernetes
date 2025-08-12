echo "Subindo BD Deploy:"
kubectl.exe apply -f .\bd-deploy.yml

echo "Subindo PHP Deploy:"
kubectl.exe apply -f .\php-deploy.yml

echo "Subindo Load Balancer:"
kubectl.exe apply -f .\php-lb.yml

echo "Subindo PV e PVC:"
kubectl.exe apply -f .\pv.yml
kubectl.exe apply -f .\pvc.yml

echo "Gerando Expose no Load Balancer"
 minikube service --url php-lb