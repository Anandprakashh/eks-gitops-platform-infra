# EKS GitOps Platform Infra

Terraform-based AWS infrastructure for a portfolio-grade GitOps platform running on Amazon EKS.

## Overview

This repository provisions the AWS infrastructure for a Kubernetes platform on Amazon EKS, including networking, IAM, container registry, and the Kubernetes control plane.

It is designed to work with a separate application repository that delivers workloads through GitOps using Argo CD.

## Goals

- Build a production-style AWS EKS platform from scratch.
- Demonstrate Terraform, Kubernetes, GitOps, and CI/CD skills.
- Create a public portfolio project for DevOps and Platform Engineer roles.
- Show modular infrastructure design, environment separation, and reproducible cloud provisioning.

## Current Status

The infrastructure foundation has been provisioned and validated successfully.

- VPC, subnets, route tables, Internet Gateway, and NAT Gateway created.
- ECR repository created for application images.
- Amazon EKS cluster and managed node group provisioned.
- Cluster access validated with `aws eks update-kubeconfig` and `kubectl`.
- Screenshots captured for documentation and portfolio use.

## Stack

- Terraform
- AWS VPC
- AWS IAM
- AWS ECR
- AWS EKS
- Argo CD
- ExternalDNS
- cert-manager
- NGINX Ingress Controller or AWS Load Balancer Controller
- Route53

## Repository Structure

```text
terraform/          Root Terraform configuration, environments, and reusable modules
bootstrap/          Kubernetes platform bootstrap manifests and add-ons
docs/               Architecture notes, decisions, and screenshots
scripts/            Helper scripts for local workflows
```

## Terraform Layout

```text
terraform/
├── environments/
│   └── dev/
├── modules/
│   ├── vpc/
│   ├── ecr/
│   └── eks/
├── providers.tf
├── variables.tf
├── outputs.tf
└── versions.tf
```

## Implemented Components

### Networking
- Custom VPC for the platform.
- Public and private subnets across multiple Availability Zones.
- Internet Gateway and NAT Gateway for controlled outbound access.
- Route table associations for public and private traffic paths.

### Container Registry
- Amazon ECR repository for application images.
- Image scan on push enabled.

### Kubernetes Platform
- Amazon EKS cluster on Kubernetes 1.35.
- Managed node group for worker nodes.
- Private subnets used for worker nodes.
- Cluster access validated through `kubectl`.

## Screenshots

### Terraform apply
![Terraform apply](docs/screenshots/terraform-apply.png)

### EKS cluster ready
![EKS cluster ready](docs/screenshots/cluster-ready.png)

### Kubernetes nodes
![Kubernetes nodes](docs/screenshots/kubectl-nodes.png)

### ECR repository
![ECR repository](docs/screenshots/ecr-repo.png)

## Validation Performed

The following checks were completed after provisioning:

- Terraform `init`, `fmt`, `validate`, and `plan`.
- Terraform `apply` completed successfully.
- AWS CLI kubeconfig updated for the EKS cluster.
- `kubectl get nodes -o wide` confirmed node readiness.
- `kubectl get pods -A` confirmed core system pods were running.

## Roadmap

- [x] Bootstrap repository structure
- [x] Add Terraform version and provider constraints
- [x] Provision VPC and networking
- [x] Provision ECR
- [x] Provision EKS cluster
- [x] Validate cluster access with kubectl
- [x] Capture deployment screenshots
- [ ] Bootstrap Argo CD
- [ ] Add ingress, ExternalDNS, and cert-manager
- [ ] Connect application delivery repository
- [ ] Document end-to-end deployment flow
- [ ] Add CI/CD checks for Terraform formatting and validation

## Design Notes

This project is intentionally structured as a modular Terraform repository instead of a single flat configuration.

Current design choices include:
- reusable modules for VPC, ECR, and EKS;
- environment-specific configuration under `terraform/environments/dev`;
- managed node groups for simpler lifecycle management;
- image registry provisioning separated from cluster provisioning;
- documentation and screenshots stored alongside the infrastructure code for portfolio visibility.

## Usage

### Prerequisites
- Terraform installed
- AWS CLI installed and configured
- `kubectl` installed
- AWS credentials configured locally

### Example workflow

```bash
terraform -chdir=terraform/environments/dev init
terraform -chdir=terraform/environments/dev fmt -recursive
terraform -chdir=terraform/environments/dev validate
terraform -chdir=terraform/environments/dev plan -var-file=terraform.tfvars
terraform -chdir=terraform/environments/dev apply -var-file=terraform.tfvars
```

### Configure kubectl for EKS

```bash
aws eks update-kubeconfig --region eu-west-2 --name eks-gitops-dev
kubectl get nodes -o wide
kubectl get pods -A
```

## Related Repository

Application repository: [eks-gitops-platform-apps](https://github.com/Anandprakashh/eks-gitops-platform-apps)

## Portfolio Purpose

This repository is part of a hands-on DevOps and platform engineering portfolio focused on:
- infrastructure as code;
- Kubernetes platform setup on AWS;
- GitOps-based delivery patterns;
- practical cloud architecture and operational workflows.

It is being built as a real project.