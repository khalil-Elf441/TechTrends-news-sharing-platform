## Kubernetes Declarative Manifests 

# Deploy a Kubernetes cluster

### create a vagrant box using the Vagrantfile in the current directory
```bash
vagrant up
```

### SSH into the vagrant box
### Note: this command uses the .vagrant folder to identify the details of the vagrant box
```bash
vagrant ssh
```

# k3s Install script
```bash
curl -sfL https://get.k3s.io | sh -
```
```bash
sudo su -
```
```bash
k3s kubectl get node 
```
or 
```bash
k3s kubectl get no
```
```bash

kubectl apply -f namespace.yaml

kubectl apply -f service.yaml

kubectl apply -f deploy.yaml
```

```bash
kubectl get all -n sandbox
```

the Kubernetes declarative manifests in this directory.
