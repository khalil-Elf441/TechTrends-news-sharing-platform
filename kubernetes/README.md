# Kubernetes Declarative Manifests 

the Kubernetes declarative manifests in this directory.


## Deploy a Kubernetes cluster

### create a vagrant box using the Vagrantfile in the current directory
```bash
vagrant up
```

### SSH into the vagrant box
### Note: this command uses the .vagrant folder to identify the details of the vagrant box
```bash
vagrant ssh
```

### k3s Install script
```bash
curl -sfL https://get.k3s.io | sh -
```
```bash
sudo su -
```
### Check for Ready node
```bash
k3s kubectl get node 
```
or 
```bash
k3s kubectl get no
```


### Create the namespace, deployment and service
```bash
kubectl apply -f namespace.yaml

kubectl apply -f service.yaml

kubectl apply -f deploy.yaml
```

### list all resources in the namespace

```bash
kubectl get all -n sandbox
```

