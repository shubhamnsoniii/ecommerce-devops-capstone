DevOps Capstone Project: E-commerce
Microservices Platform (Individual Project)

Project Type
This is an individual capstone project. Each student must independently implement the DevOps
pipeline and deployment for the application provided.
The application source code will be provided in a Git repository by the instructor. The repository will
contain the frontend and backend microservices but will NOT contain Dockerfiles or DevOps
configurations. Students must create all DevOps components themselves.

Problem Statement
A startup is building a small e-commerce platform and wants to deploy it using modern DevOps
practices.
The development team has already written the application code, but the infrastructure, CI/CD
pipeline, and deployment automation are missing.
As a DevOps engineer, your responsibility is to design and implement the complete DevOps
lifecycle to build, package, deploy, and monitor the system.
Your objective is to take the existing application code and create a fully automated DevOps pipeline
that can build and deploy the system reliably.

Application Overview
The application follows a microservice architecture and consists of:
Frontend
• React web application
Backend Microservices
• Product Service – manages product catalog
• Order Service – manages customer orders
• Inventory Service – manages product stock
Database
• MySQL database used by the services
All services communicate through REST APIs.
Source Code Provided
Students will receive a Git repository containing:
• React frontend source code
• Product service (Node.js)
• Order service (Node.js)
• Inventory service (Node.js)
• Database schema
The repository will NOT contain:
• Dockerfiles
• Jenkins pipeline configuration
• Kubernetes manifests
• Terraform scripts
• Ansible playbooks
Students must design and implement these components themselves.
DevOps Tasks To Implement
Students must implement the following DevOps components:
1. Git Workflow
• Fork or clone the provided repository
• Maintain commits and version control
2. Containerization
• Write Dockerfiles for all services
• Build Docker images for:- frontend- product service- order service- inventory service
3. CI/CD Pipeline
• Implement Jenkins pipeline to:- build applications- build Docker images- push images to a container registry- deploy the application
4. Kubernetes Deployment
• Deploy all services to Kubernetes
• Create deployments and services
• Configure networking between services
5. Infrastructure as Code
• Use Terraform to provision infrastructure resources
6. Configuration Management
• Use Ansible to configure required servers
7. Monitoring and Observability
• Setup Prometheus for metrics collection
• Configure Grafana dashboards for monitoring the application and infrastructure.

Expected Architecture
Developer → GitHub → Jenkins CI/CD → Docker Images → Container Registry → Kubernetes
Cluster → Running Microservices → Monitoring with Prometheus and Grafana
Deliverables

Each student must submit:
• GitHub repository containing DevOps implementation
• Dockerfiles for all services
• Jenkins pipeline configuration
• Kubernetes deployment manifests
• Terraform infrastructure scripts
• Ansible playbooks
• Grafana dashboard screenshots
• Architecture diagram
• Working demo of deployed application
=======
# Ecommerce DevOps Capstone Project

A production-ready DevOps capstone project demonstrating a complete CI/CD pipeline, containerized microservices, monitoring, and centralized logging using modern DevOps tools.

---

## Project Overview

This project is a cloud-native e-commerce application built using a microservices architecture. It showcases how to develop, deploy, monitor, and manage applications using DevOps best practices.

---

## Tech Stack

### Backend
- ASP.NET Core (.NET)
- REST APIs

### Frontend
- React.js

### Database
- MySQL

### DevOps & Automation
- Docker
- Docker Compose
- Jenkins CI/CD
- Git & GitHub

### Monitoring & Logging
- Prometheus
- Grafana
- Loki
- Promtail

---

## Microservices

- Product Service
- Order Service
- Inventory Service
- React Frontend
- MySQL Database

---

## Project Features

- Microservices Architecture
- Dockerized Services
- Automated CI/CD Pipeline using Jenkins
- Container Orchestration with Docker Compose
- Real-time Monitoring with Prometheus & Grafana
- Centralized Logging using Loki & Promtail
- Version Control with Git & GitHub

---

## Project Architecture

```text
                GitHub
                   │
                   ▼
            Jenkins CI/CD
                   │
            Build & Deploy
                   │
          Docker Compose Stack
   ┌────────────┬────────────┬────────────┐
   │            │            │
Product      Order      Inventory
Service      Service      Service
        │        │
        └────────┴────────┐
                          │
                       MySQL
                          │
                     React Frontend

Monitoring Stack

Prometheus → Grafana
Promtail → Loki → Grafana
```

---

## Getting Started

### Clone the repository

```bash
git clone https://github.com/shubhamnsoniii/ecommerce-devops-capstone.git
```

### Start the application

```bash
docker compose up -d
```

### Access Services

| Service | URL |
|---------|-----|
| Frontend | http://localhost:3001 |
| Product API | http://localhost:5000 |
| Order API | http://localhost:5001 |
| Inventory API | http://localhost:5002 |
| Grafana | http://localhost:3000 |
| Prometheus | http://localhost:9090 |

---

## Future Enhancements

- Kubernetes Deployment
- Helm Charts
- GitHub Actions
- Terraform
- AWS/Azure Deployment

---

## Author

**Shubham N Soni**

DevOps Engineer | Docker | Jenkins | Kubernetes | AWS | AZURE | Python | .NET | React | Prometheus | Grafana | Loki