apiVersion: v1
kind: Pod
metadata:
  name: my-server-pod
spec:
  containers:
  - name: my-server-container
    image: my-server-image:latest
    ports:
    - containerPort: 8080
