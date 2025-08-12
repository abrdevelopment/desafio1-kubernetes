echo "Deleta Deploys:"
kubectl delete deploy mysql php

echo "Deleta Serviços:"
delete svc mysql-connection php-lb

echo "Visualiza Kubectl:"
kubectl get pods
kubectl get svc
kubectl get deploy