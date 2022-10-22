## TechTrends

TechTrends is an online website used as a news sharing platform, that enables consumers to access the latest news within the cloud-native ecosystem. In addition to accessing the available articles, readers are able to create new media articles and share them.

As a platform engineer, you should package and deploy TechTrends to Kubernetes using a CI/CD pipeline.

The web application is written using the Python Flask framework. It uses SQLite, a lightweight disk-based database to store the submitted articles. 


This repository file structure can be found below:

```bash
│   .dockerignore
│   .gitignore
│   Dockerfile
│   docker_commands
│   README.md
│   Vagrantfile
│
├───.github
│   └───workflows
│           techtrends-dockerhub.yml
...
├───argocd
│       argocd-server-nodeport.yaml
│       helm-techtrends-prod.yaml
│       helm-techtrends-staging.yaml
│       README.md
│
├───helm
│   │   Chart.yaml
│   │   README.md
│   │   values-prod.yaml
│   │   values-staging.yaml
│   │   values.yaml
│   │
│   └───templates
│           deploy.yaml
│           namespace.yaml
│           service.yaml
│
├───kubernetes
│       deploy.yaml
│       namespace.yaml
│       README.md
│       service.yaml
│
├───screenshots
│       argocd-techtrends-prod.PNG
│       argocd-techtrends-staging.PNG
│       argocd-ui.PNG
│       ci-dockerhub.PNG
│       ci-github-actions.PNG
│       docker-run-local.PNG
│       k8s-nodes.PNG
│       kubernetes-declarative-manifests.PNG
│       README.md
│
└───techtrends
    │   app.py
    │   database.db
    │   init_db.py
    │   README.md
    │   requirements.txt
    │   schema.sql
    │   __init__.py
    │
    ├───static/
    └────templates/

```

### File description
    
* `techtrends/README.md` contains the main steps of how to execute the TechTrends application

* `techtrends/__init__.py` is a reserved method used to indicate that a directory is a Python package

* `techtrends/app.py` contains the main logging of the TechTrends application

* `techtrends/init_db.py` is a file that is used to initialize the posts database with a set of articles

* `techtrends/requirements.txt` contains a list of packages that need to be installed before running the TechTrends application

* `techtrends/schema.sql` outlines the posts database schema

* `techtrends/static/` folder contains the CSS files

* `techtrends/templates/` folder outlines the HTML structure of the TechTrends application


* `argocd` -  the ArgoCD manifests

* `helm` -  the Helm chart files

* `kubernetes` -  Kubernetes declarative manifests

* `screenshots` -  all the screenshots that you take throughout the course

* `Vagrantfile` - the file containing the configuration for the vagrant box. Will be used to create a vagrant box locally.

* `docker_commands` - the file will be used to record any used Docker commands and outputs



