# Ansible Deployment

This directory contains the Ansible playbook used to deploy the Ecommerce DevOps Capstone application to Kubernetes.

## Files

- inventory.ini
- ansible.cfg
- playbook.yml

## Run Playbook

```bash
ansible-playbook playbook.yml
```

## What the Playbook Does

- Verifies Kubernetes connectivity
- Applies Kubernetes namespace
- Deploys MySQL
- Deploys Product Service
- Deploys Order Service
- Deploys Inventory Service
- Deploys Frontend
- Verifies running pods

## Author

Shubham Soni