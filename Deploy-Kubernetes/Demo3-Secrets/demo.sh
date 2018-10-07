# https://youtu.be/GoITFljdJdo?t=1800

# Create a generic secret from files
kubectl create secret generic dbsecret --from-file=./username.txt --from-file=./password.txt

# Check the creation of secret
kubectl get secret

# Check the creation of secret in YAML
kubectl get secret -o yaml

# decode the secret
echo bXlwYXNzd29yZAo= | base64 --decode

# Create the pod
kubectl create -f secret-pod.yml

# Access the secret in the pod
kubectl exec -it secret-pod /bin/sh
cd /etc/foo

# Clean up
kubectl delete secret dbsecret
kubectl delete -f secret-pod.yml
