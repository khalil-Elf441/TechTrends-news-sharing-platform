## ArgoCD Manifests 

the ArgoCD manifests in this directory.


## Install ArgoCD

```bash
kubectl create namespace argocd

kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```

[ArgoCD Installation guide](https://argo-cd.readthedocs.io/en/stable/getting_started/)

## Access ArgoCD
Using "NodePort" to expose the application to be accessible from the vagrant box to the Host machine
The YAML manifest for the NodePort service : argocd-server-nodeport.yaml

```bash
kubectl apply -f argocd-server-nodeport.yaml
```

```bash
kubectl get svc -n argocd
```

### Get ArgoCD default password

```bash
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
```

### Deploy techtrends Staging

```bash
kubectl apply -f helm-techtrends-staging.yaml
```

### Deploy techtrends Prod

```bash
kubectl apply -f helm-techtrends-Prod.yaml
```
