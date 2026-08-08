# 🛒 E-Commerce DevOps Capstone Project

<p align="center">

**A Complete CI/CD, Containerization, Kubernetes, Infrastructure Automation & Monitoring Implementation**

</p>

<p align="center">

![Docker](https://img.shields.io/badge/Docker-Containerization-2496ED?logo=docker&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestration-326CE5?logo=kubernetes&logoColor=white)
![Jenkins](https://img.shields.io/badge/Jenkins-CI%2FCD-D24939?logo=jenkins&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?logo=terraform&logoColor=white)
![Ansible](https://img.shields.io/badge/Ansible-Automation-EE0000?logo=ansible&logoColor=white)
![Prometheus](https://img.shields.io/badge/Prometheus-Monitoring-E6522C?logo=prometheus&logoColor=white)
![Grafana](https://img.shields.io/badge/Grafana-Visualization-F46800?logo=grafana&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-Version%20Control-181717?logo=github&logoColor=white)

</p>

---

## 📌 Project Overview

This project is an **E-Commerce Microservices DevOps Capstone Project** that demonstrates the complete DevOps lifecycle of a cloud-native application.

The objective of the project is to take a multi-service e-commerce application and implement the infrastructure, containerization, CI/CD pipeline, Kubernetes deployment, infrastructure automation, configuration management, monitoring, and observability required to run the application reliably.

The project implements the following DevOps workflow:

```text
Developer
    │
    ▼
 GitHub
    │
    ▼
 Jenkins CI/CD
    │
    ├──────────────► Docker Build
    │
    ▼
 Docker Hub
    │
    ▼
 Kubernetes
    │
    ├── Frontend
    ├── Product Service
    ├── Order Service
    ├── Inventory Service
    └── MySQL
    │
    ▼
 Prometheus
    │
    ▼
 Grafana
```

The capstone requirements specify the expected architecture as:

```text
Developer → GitHub → Jenkins CI/CD → Docker Images
→ Container Registry → Kubernetes Cluster
→ Running Microservices → Prometheus & Grafana
```

---

# 🎯 Project Objectives

The major objectives of this project are:

- Implement Git-based source code management.
- Containerize all application services using Docker.
- Create a Docker Compose environment for local deployment.
- Build an automated CI/CD pipeline using Jenkins.
- Build and publish Docker images to Docker Hub.
- Deploy application services to Kubernetes.
- Configure Kubernetes Deployments and Services.
- Configure communication between microservices.
- Implement Infrastructure as Code using Terraform.
- Implement automation and configuration management using Ansible.
- Implement application and infrastructure monitoring using Prometheus.
- Create Grafana dashboards for visualization.
- Validate the complete DevOps workflow using a working application.

---

# 🏗️ Application Architecture

The application follows a microservices architecture.

## Application Components

### Frontend

A React.js web application that provides the user interface for the e-commerce platform.

### Product Service

Node.js-based REST API responsible for product catalog operations.

### Order Service

Node.js-based REST API responsible for order-related operations.

### Inventory Service

Node.js-based REST API responsible for inventory and stock operations.

### MySQL

MySQL is used as the relational database for the application services.

---

# 🧩 Microservices

| Component | Technology | Purpose |
|---|---|---|
| Frontend | React.js | E-Commerce web interface |
| Product Service | Node.js / Express.js | Product management |
| Order Service | Node.js / Express.js | Order management |
| Inventory Service | Node.js / Express.js | Inventory management |
| Database | MySQL 8 | Application database |

All backend services communicate through REST APIs.

---

# 🏛️ DevOps Architecture

![E-Commerce Microservices Architecture](docs/screenshots/37_Ecommerce_Microservices_Architecture.png)

### High-Level Architecture

```text
                         ┌─────────────────┐
                         │    Developer    │
                         └────────┬────────┘
                                  │
                                  ▼
                         ┌─────────────────┐
                         │     GitHub      │
                         │ Source Control  │
                         └────────┬────────┘
                                  │
                                  ▼
                         ┌─────────────────┐
                         │     Jenkins     │
                         │     CI / CD     │
                         └────────┬────────┘
                                  │
                       ┌──────────┴──────────┐
                       │                     │
                       ▼                     ▼
                Docker Build            Docker Hub
                       │                Image Registry
                       └──────────┬──────────┘
                                  │
                                  ▼
                    ┌──────────────────────────┐
                    │       Kubernetes         │
                    │    Namespace:            │
                    │   shubham-ecommerce      │
                    │                          │
                    │  ┌──────────────────┐    │
                    │  │ React Frontend   │    │
                    │  └──────────────────┘    │
                    │           │              │
                    │  ┌────────┼─────────┐    │
                    │  ▼        ▼         ▼    │
                    │ Product  Order  Inventory │
                    │ Service Service Service  │
                    │           │              │
                    │           ▼              │
                    │        MySQL             │
                    └───────────┬──────────────┘
                                │
                    ┌───────────┴───────────┐
                    │                       │
                    ▼                       ▼
               Prometheus                Grafana
               Metrics                   Dashboard
```

---

# 🛠️ Technology Stack

## Application Technologies

- React.js
- Node.js
- Express.js
- REST APIs
- MySQL

## DevOps Technologies

- Git
- GitHub
- Docker
- Docker Compose
- Docker Hub
- Jenkins
- Kubernetes
- Terraform
- Ansible
- Prometheus
- Grafana

---

# 🐳 Docker Containerization

Each application service has its own Dockerfile.

Docker images are created for:

```text
shubham5799/frontend:v1
shubham5799/product-service:v1
shubham5799/order-service:v1
shubham5799/inventory-service:v1
```

These images are used by the Kubernetes deployments.

## Docker Build

Example:

```bash
docker build -t shubham5799/product-service:v1 .
```

## Verify Images

```bash
docker images
```

---

# 🐳 Docker Compose

Docker Compose is used for local multi-container application deployment.

## Start Application

```bash
docker compose up -d
```

## Check Containers

```bash
docker compose ps
```

## Validate Configuration

```bash
docker compose config
```

## Stop Application

```bash
docker compose down
```

---

# 🌐 Docker Compose Services

| Service | Port |
|---|---:|
| Frontend | 3001 |
| Product Service | 5000 |
| Order Service | 5001 |
| Inventory Service | 5002 |
| MySQL | 3306 |

### Frontend

```text
http://localhost:3001
```

---

# ☸️ Kubernetes Deployment

The application is deployed to Kubernetes using a dedicated namespace:

```text
shubham-ecommerce
```

Kubernetes resources include:

- Deployments
- Services
- Pods
- ReplicaSets
- ClusterIP services
- NodePort services

## Kubernetes Components

```text
Frontend
Product Service
Order Service
Inventory Service
MySQL
Prometheus
Grafana
```

---

# 🔗 Kubernetes Services

| Service | Type | Internal Port | NodePort |
|---|---|---:|---:|
| Frontend | NodePort | 80 | 30001 |
| Product Service | NodePort | 5000 | 30261 |
| Order Service | NodePort | 5001 | 30789 |
| Inventory Service | NodePort | 5002 | 32221 |
| MySQL | ClusterIP | 3306 | - |
| Prometheus | NodePort | 9090 | 30090 |
| Grafana | NodePort | 3000 | 30300 |

---

# 🚀 Kubernetes Access

## E-Commerce Application

```text
http://localhost:30001
```

## Prometheus

```text
http://localhost:30090
```

## Grafana

```text
http://localhost:30300
```

---

# 🔍 Kubernetes Verification

Check the Kubernetes cluster:

```bash
kubectl cluster-info
```

Check nodes:

```bash
kubectl get nodes
```

Check application pods:

```bash
kubectl get pods -n shubham-ecommerce
```

Check deployments:

```bash
kubectl get deployments -n shubham-ecommerce
```

Check services:

```bash
kubectl get svc -n shubham-ecommerce
```

---

# 🔄 Jenkins CI/CD Pipeline

Jenkins is used to automate the complete application build and deployment process.

The Jenkins pipeline is stored in:

```text
Jenkinsfile-k8s
```

## Pipeline Workflow

```text
1. Checkout Source Code
          │
          ▼
2. Build Frontend Docker Image
          │
          ▼
3. Build Product Docker Image
          │
          ▼
4. Build Order Docker Image
          │
          ▼
5. Build Inventory Docker Image
          │
          ▼
6. Authenticate with Docker Hub
          │
          ▼
7. Push Docker Images
          │
          ▼
8. Restart Kubernetes Deployments
          │
          ▼
9. Verify Kubernetes Rollout
          │
          ▼
10. Verify Kubernetes Pods & Services
```

---

# 📦 Docker Hub

Docker Hub is used as the container image registry.

The Jenkins pipeline publishes the following images:

```text
shubham5799/frontend:v1
shubham5799/product-service:v1
shubham5799/order-service:v1
shubham5799/inventory-service:v1
```

The images are then used by Kubernetes deployments.

---

# 🏗️ Terraform

Terraform is used to demonstrate Infrastructure as Code (IaC).

Terraform configuration is maintained under:

```text
terraform/
```

The Terraform workflow includes:

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

Terraform provides a declarative approach for managing infrastructure resources.

---

# ⚙️ Ansible

Ansible is used for automation and configuration management.

Ansible files are maintained under:

```text
ansible/
```

Example inventory:

```ini
[kubernetes]
localhost ansible_connection=local
```

The playbook performs Kubernetes deployment and verification tasks.

Example execution:

```bash
ansible-playbook -i inventory.ini playbook.yml
```

The playbook includes tasks for:

- Kubernetes cluster verification
- MySQL deployment
- Product Service deployment
- Order Service deployment
- Inventory Service deployment
- Frontend deployment
- Pod verification

---

# 📊 Monitoring & Observability

Monitoring is implemented using **Prometheus and Grafana**.

## Prometheus

Prometheus is responsible for collecting and storing metrics.

```text
Application / Kubernetes
          │
          ▼
      Prometheus
```

## Grafana

Grafana is used to visualize Prometheus metrics through dashboards.

```text
Prometheus
    │
    ▼
 Grafana
    │
    ▼
Monitoring Dashboards
```

Monitoring provides visibility into the application and infrastructure environment.

---

# 📈 Monitoring Stack

```text
                ┌────────────────────┐
                │     Kubernetes     │
                │      Workloads     │
                └─────────┬──────────┘
                          │
                          ▼
                 ┌─────────────────┐
                 │   Prometheus    │
                 │ Metrics Storage │
                 └────────┬────────┘
                          │
                          ▼
                 ┌─────────────────┐
                 │     Grafana     │
                 │   Dashboards    │
                 └─────────────────┘
```

---

# 📝 Logging

The project also includes a centralized logging stack using:

- Loki
- Promtail
- Grafana

The logging architecture is:

```text
Application / System Logs
          │
          ▼
       Promtail
          │
          ▼
         Loki
          │
          ▼
       Grafana
```

---

# 📂 Repository Structure

```text
ecommerce-devops-capstone/
│
├── frontend/
│   ├── Dockerfile
│   └── ...
│
├── product-service/
│   ├── Dockerfile
│   └── ...
│
├── order-service/
│   ├── Dockerfile
│   └── ...
│
├── inventory-service/
│   ├── Dockerfile
│   └── ...
│
├── mysql-init/
│
├── k8s/
│   ├── frontend-deployment.yaml
│   ├── frontend-service.yaml
│   ├── product-deployment.yaml
│   ├── product-service.yaml
│   ├── order-deployment.yaml
│   ├── order-service.yaml
│   ├── inventory-deployment.yaml
│   ├── inventory-service.yaml
│   └── mysql.yaml
│
├── terraform/
│
├── ansible/
│   ├── inventory.ini
│   └── playbook.yml
│
├── monitoring/
│
├── docs/
│   └── screenshots/
│       ├── 34_Jenkins_CI-CD_Success.png
│       ├── 35_Kubernetes_Final_Status_After_Jenkins.png
│       ├── 36_Final_Ecommerce_Application.png
│       └── 37_Ecommerce_Microservices_Architecture.png
│
├── docker-compose.yml
├── Jenkinsfile-k8s
└── README.md
```

---

# 🚀 Getting Started

## 1. Clone Repository

```bash
git clone https://github.com/shubhamnsoniii/ecommerce-devops-capstone.git
```

```bash
cd ecommerce-devops-capstone
```

---

## 2. Run with Docker Compose

```bash
docker compose up -d
```

Verify:

```bash
docker compose ps
```

Access the frontend:

```text
http://localhost:3001
```

---

## 3. Verify Kubernetes

```bash
kubectl cluster-info
```

```bash
kubectl get nodes
```

---

## 4. Deploy Kubernetes Resources

```bash
kubectl apply -f k8s/
```

Verify:

```bash
kubectl get pods -n shubham-ecommerce
```

```bash
kubectl get deployments -n shubham-ecommerce
```

```bash
kubectl get svc -n shubham-ecommerce
```

---

# 🧪 Project Validation

The final implementation was validated across the complete DevOps lifecycle.

### Git & GitHub

- Source code maintained using Git.
- Project repository synchronized with GitHub.
- DevOps configuration maintained in version control.

### Docker

- Dockerfiles created for all application services.
- Docker images successfully built.
- Images successfully published to Docker Hub.

### Kubernetes

- All application services deployed to Kubernetes.
- Kubernetes Services configured.
- Service-to-service communication configured.
- Application successfully accessed through Kubernetes NodePort.

### Jenkins

- Jenkins successfully checks out the source code.
- Docker images are built automatically.
- Images are pushed to Docker Hub.
- Kubernetes deployments are restarted.
- Kubernetes rollout status is verified automatically.

### Terraform

- Infrastructure automation implemented using Terraform.

### Ansible

- Deployment and Kubernetes verification automated using Ansible.

### Prometheus

- Prometheus configured for metrics collection.

### Grafana

- Grafana connected to Prometheus.
- Monitoring dashboards configured.

### Application

The final application was successfully deployed and accessed through Kubernetes:

```text
http://localhost:30001
```

---

# 📸 Project Evidence

Project validation screenshots are available under:

```text
docs/screenshots/
```

## Jenkins CI/CD

![Jenkins CI/CD Success](docs/screenshots/34_Jenkins_CI-CD_Success.png)

The screenshot demonstrates the successful Jenkins CI/CD execution, including Docker image publishing and Kubernetes deployment.

---

## Kubernetes Final Status

![Kubernetes Final Status](docs/screenshots/35_Kubernetes_Final_Status_After_Jenkins.png)

The screenshot demonstrates that the Kubernetes workloads are successfully running after the Jenkins deployment.

---

## Final E-Commerce Application

![Final E-Commerce Application](docs/screenshots/36_Final_Ecommerce_Application.png)

The screenshot demonstrates the final deployed e-commerce application.

---

## Architecture Diagram

![E-Commerce Microservices Architecture](docs/screenshots/37_Ecommerce_Microservices_Architecture.png)

The architecture diagram illustrates the complete DevOps workflow from source code management through CI/CD, containerization, Kubernetes deployment, and monitoring.

---

# 🔐 Security Notes

Sensitive credentials must **never** be committed to the Git repository.

Examples include:

- Docker Hub Personal Access Tokens
- Passwords
- API keys
- Kubernetes secrets
- Cloud credentials
- SSH private keys

Jenkins credentials are managed using Jenkins Credentials Management rather than storing credentials directly in the pipeline source code.

---

# 🔮 Future Enhancements

Potential improvements for future iterations include:

- Helm charts for Kubernetes deployments
- Kubernetes Ingress
- HTTPS/TLS configuration
- Kubernetes Secrets and ConfigMaps
- Horizontal Pod Autoscaling
- Cloud deployment on AWS or Azure
- Automated unit/integration testing in Jenkins
- GitHub webhook-triggered Jenkins builds
- Blue-Green or Canary deployments
- Improved centralized logging and alerting
- Production-grade persistent storage

---

# 🎓 Capstone Deliverables

This repository contains the major DevOps deliverables required for the capstone:

| Deliverable | Location |
|---|---|
| Application Source Code | Root application directories |
| Dockerfiles | Application service directories |
| Docker Compose | `docker-compose.yml` |
| Jenkins Pipeline | `Jenkinsfile-k8s` |
| Kubernetes Manifests | `k8s/` |
| Terraform | `terraform/` |
| Ansible | `ansible/` |
| Monitoring | `monitoring/` |
| Project Evidence | `docs/screenshots/` |
| Architecture Diagram | `docs/screenshots/37_Ecommerce_Microservices_Architecture.png` |
| Documentation | `README.md` |

---

# 👨‍💻 Author

## Shubham N Soni

**DevOps Engineer**

### Skills

```text
Docker
Jenkins
Kubernetes
Terraform
Ansible
AWS
Azure
Git & GitHub
Linux
Prometheus
Grafana
Loki
Python
.NET
React
```

---

# 🔗 Project Repository

**GitHub:**

https://github.com/shubhamnsoniii/ecommerce-devops-capstone

---

## ⭐ Project Summary

This capstone demonstrates a complete DevOps workflow for a microservices-based e-commerce application:

```text
        SOURCE CONTROL
             │
             ▼
          GitHub
             │
             ▼
       ┌───────────┐
       │  Jenkins  │
       │   CI/CD   │
       └─────┬─────┘
             │
             ▼
       Docker Build
             │
             ▼
        Docker Hub
             │
             ▼
       Kubernetes
             │
      ┌──────┼──────┐
      │      │      │
      ▼      ▼      ▼
   Product  Order  Inventory
      │      │      │
      └──────┼──────┘
             │
             ▼
           MySQL
             │
             ▼
         Application
             │
             ▼
       Prometheus
             │
             ▼
          Grafana
```

**The project demonstrates how source code can be transformed into a containerized, continuously deployed, monitored microservices application using modern DevOps practices.**