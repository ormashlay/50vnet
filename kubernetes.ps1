
Install-Module -Name Kubernetes

choco install minikube


minikube start


mkdir my-server


New-Item -Path server1 -ItemType File -Name server.yaml


code my-server\server.yaml

