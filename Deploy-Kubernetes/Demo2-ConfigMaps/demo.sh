# https://youtu.be/GoITFljdJdo?t=1547

# Create the configmap from the configmation file
kubectl create configmap example-redis-config --from-file=redis-config

# Show the configmap in yaml
kubectl get configmap example-redis-config -o yaml

# Create redis pod
kubectl create -f redis.yml

kubectl get pods

# Check the configuration
kubectl exec -it redis redis-cli

# Execute the following commands in Reids shell at 127.0.0.1:6937
CONFIG GET maxmemory
CONFIG GET maxmemory-policy

# Clean up
kubectl delete configmap example-redis-config
kubectl delete pods redis
