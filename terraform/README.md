# Terraform Infrastructure

This directory contains the Terraform configuration used to deploy the Ecommerce DevOps Capstone application to a Kubernetes cluster.

## Infrastructure Components

Terraform provisions the following Kubernetes resources:

- Kubernetes Namespace
- MySQL Deployment
- MySQL Service
- Product Service Deployment
- Product Service
- Order Service Deployment
- Order Service
- Inventory Service Deployment
- Inventory Service
- Frontend Deployment
- Frontend Service

## Prerequisites

- Terraform >= 1.5
- Docker Desktop Kubernetes (or any Kubernetes cluster)
- kubectl configured
- Docker images available in Docker Hub

Docker Images

- shubham5799/frontend:v1
- shubham5799/product-service:v1
- shubham5799/order-service:v1
- shubham5799/inventory-service:v1
- mysql:8

## Initialize Terraform

```bash
terraform init
```

## Validate Configuration

```bash
terraform validate
```

## Preview Changes

```bash
terraform plan
```

## Deploy Infrastructure

```bash
terraform apply
```

## Destroy Infrastructure

```bash
terraform destroy
```

## Project Structure

```
terraform/
│
├── versions.tf
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
├── main.tf
├── mysql.tf
├── product.tf
├── order.tf
├── inventory.tf
├── frontend.tf
└── README.md
```

## Technologies Used

- Terraform
- Kubernetes
- Docker
- Docker Hub
- MySQL

## Author

Shubham Soni