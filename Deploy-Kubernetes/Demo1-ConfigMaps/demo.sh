# Deploy the ConfigMap
kubectl create -f configmap.yml

# create the Pod with Env Var
kubectl create -f pod-cmd.yml

# Check the logs
kubectl logs test-pod-cmd

# create the Pod with Env Var
kubectl create -f pod-env.yml

# Check the env vars
kubectl exec -it test-pod-env /bin/sh

# Create the Pod with Env Var
kubectl create -f pod-vol.yml

# Check the logs
kubectl logs test-pod-vol

# Access the shell
kubectl exec -it test-pod-vol /bin/sh

# Check teh files
cd /etc/config
cat log.level
cat log.location
