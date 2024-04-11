
Install-Module -Name Kubernetes

choco install minikube


minikube start


mkdir my-server


New-Item -Path my-server -ItemType File -Name server.yaml


code my-server\server.yaml

