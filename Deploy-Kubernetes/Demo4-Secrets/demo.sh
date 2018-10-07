# Create base64 encoded username
echo admin | base64

# Create base64 encoded password
echo S0meP@ssw0rD | base64

# Create generic secreate from YAML file
kubectl create -f my-secret.yml

# Create the pod
kubectl create -f pod-secret-env.yml

# Access the secret in the pod
kubectl exec -it secret-env-pod /bin/sh
env

# Clean up
kubectl delete -f my-secret.yml -f pod-secret-env.yml
