# ⚙️ Kubernetes Cluster Setup & Microservices Deployment (AKS + Terraform)

This project demonstrates how to provision and deploy a scalable Kubernetes environment on Azure Kubernetes Service (AKS) using Terraform, and how to deploy containerized microservices.

---

## 🚀 Overview

The project focuses on building a cloud-native infrastructure using **Infrastructure as Code (IaC)** principles. It automates the creation of an AKS cluster and enables deployment of microservices with consistent and repeatable configurations.

---

## 🏗️ Architecture

Developer → Terraform → Azure AKS → Kubernetes → Microservices Deployment

---

## ✨ Features

- Provision AKS cluster using Terraform  
- Infrastructure as Code (IaC) for repeatability and consistency  
- Deployment of containerized microservices on Kubernetes  
- Resource management using Terraform Kubernetes & Helm providers  
- Scalable and cloud-native architecture  
- Efficient networking and service exposure  

---

## ⚙️ Prerequisites

- Azure Subscription  
- Azure CLI installed and logged in  
- Terraform (v1.3+)  
- kubectl configured  
- Helm installed  

---

## 🚀 Deployment Steps

### Initialize Terraform

```bash
terraform init
```

### Validate Configuration

```bash
terraform validate
```

### Apply Infrastructure

```bash
terraform apply
```

## 🔍 Verify Cluster

```bash
kubectl get nodes
kubectl get pods
```

## 🧠 Technologies Used

- Terraform
- Kubernetes
- Helm
- Azure Kubernetes Service (AKS)

##  🎯 Outcome

Successfully built a scalable, automated Kubernetes environment on Azure for deploying and managing microservices using DevOps best practices.

##  📌 Future Improvements

- CI/CD pipeline integration
- Ingress controller with TLS
- Autoscaling (HPA)
- Monitoring with Prometheus & Grafana
- Centralized logging

