# DevSecOps Secure CI/CD Pipeline

## Overview

This project demonstrates a **DevSecOps pipeline** that integrates security checks into the CI/CD workflow. The pipeline automatically scans infrastructure code and container images for security vulnerabilities before deployment.

The goal of this project is to implement **Shift-Left Security**, where security is applied early in the development lifecycle.

---

## DevSecOps Pipeline Architecture

Developer pushes code to GitHub.

Pipeline flow:

Code Push → Terraform Security Scan → Docker Build → Container Security Scan

Security tools are executed automatically using **GitHub Actions**.

---

## Tools Used

- **Terraform** – Infrastructure as Code
- **Checkov** – Terraform security scanning
- **Docker** – Containerization
- **Trivy** – Container vulnerability scanning
- **GitHub Actions** – CI/CD automation

---

## Security Checks Implemented

### 1. Infrastructure Security (Checkov)

Terraform configuration is scanned for:

- Public storage access
- HTTPS enforcement
- TLS security
- Storage configuration risks
- Infrastructure misconfigurations

Example command used in the pipeline:

checkov -d terraform/

---

### 2. Container Security (Trivy)

Docker images are scanned for:

- OS vulnerabilities
- Library vulnerabilities
- Misconfigurations

Example command:

trivy image devsecops-lab

---

## Project Structure

gokul-devsecops-lab
│
├── terraform
│ └── main.tf
│
├── Dockerfile
│
├── README.md
│
└── .github
    └── workflows
        └── devsecops-pipeline.yml

---

## CI/CD Pipeline

The pipeline is implemented using **GitHub Actions**.

Stages include:

1. Checkout repository
2. Run Terraform security scan (Checkov)
3. Build Docker image
4. Run container vulnerability scan (Trivy)

---

## DevSecOps Best Practices Demonstrated

- Shift-Left Security
- Infrastructure as
