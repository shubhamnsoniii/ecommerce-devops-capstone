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


## Project Architecture


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



## Getting Started

### Clone the repository

bash
git clone https://github.com/yourusername/ecommerce-devops-capstone.git


### Start the application

bash
docker compose up -d


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

Shubham N Soni

DevOps Engineer | Docker | Jenkins | Kubernetes | .NET | React | Prometheus | Grafana | Loki
