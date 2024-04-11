apiVersion: v1
kind: Pod
metadata:
  name: server1pods
spec:
  containers:
  - name: my-server-container
    image: server1pods-image:latest
    ports:
    - containerPort: 8080

kubectl apply -f my-server\server.yaml

kubectl get pods
