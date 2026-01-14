![Terraform Plan](https://github.com/hatimabu/terraform-ci-cd-template/actions/workflows/terraform-plan.yml/badge.svg?branch=test-plan)

# Terraform CI/CD Template

A clean, reusable template for automating Terraform workflows using GitHub Actions.  
This project demonstrates best‑practice CI/CD patterns for Infrastructure‑as‑Code without requiring real cloud deployment.

**CI/CD = a workflow that automatically checks, tests, and deploys code or infrastructure whenever changes are made.**

---

## 🚀 Purpose

This repository serves as a **cloud‑agnostic Terraform CI/CD template**.  
It focuses on automation, validation, and workflow structure — not on deploying real infrastructure.

Use it as a starting point for:
- Learning Terraform automation
- Demonstrating DevOps skills in a portfolio
- Bootstrapping real Terraform projects
- Understanding safe IaC workflows

---

## 📁 Folder Structure

```
terraform-ci-cd-template/
├── infra/                    # Terraform configuration (example only)
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
└── .github/
    └── workflows/           # CI/CD pipelines
        ├── terraform-plan.yml
        └── terraform-apply.yml
```

---

## 🔧 Workflows

### **1. Pull Requests → Terraform Plan**
Runs automatically when a pull request targets `main`.

It performs:
- `terraform fmt -check`
- `terraform validate`
- `terraform plan`

This ensures code is formatted, valid, and safe before merging.

---

### **2. Main Branch → Terraform Apply**
Runs when changes are merged into `main`.

It performs:
- `terraform init`
- `terraform apply -auto-approve`

> In this template, the apply step is included for demonstration.  
> You can disable or modify it if you don’t want real deployments.

---

## 🧩 How to Use This Template

1. Add your Terraform code inside the `infra/` directory  
2. Customize or remove the apply workflow depending on your needs  
3. Use pull requests to trigger automated validation and planning  
4. Extend the workflows with testing, linting, or notifications

---

## 🏗 Example Terraform (Included)

The `infra/` folder contains a minimal example (an S3 bucket) purely for demonstration.  
You can replace it with any Terraform configuration.

---

## 📌 Notes

- **Demo template**: Uses mock AWS credentials for demonstration purposes only
- **No real AWS account required**: All operations use dummy credentials
- This template is intentionally simple and safe
- Designed to highlight **CI/CD skills**, not cloud architecture
- Green badges indicate successful workflow execution in demo mode

---

## 📜 License

This project is provided as a learning and portfolio template.  
Feel free to modify and reuse it.
