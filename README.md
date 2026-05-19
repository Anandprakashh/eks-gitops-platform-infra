# EKS GitOps Platform Infra

Terraform-based AWS infrastructure for a portfolio-grade GitOps platform running on Amazon EKS.

## Overview

This repository provisions the cloud infrastructure for a Kubernetes platform on AWS, including networking, IAM, container registry, and EKS.

It is designed to work with a separate application repository that delivers workloads through GitOps using Argo CD.

## Goals

- Build a production-style AWS EKS platform from scratch
- Demonstrate Terraform, Kubernetes, GitOps, and CI/CD skills
- Create a public portfolio project for DevOps / Platform Engineer roles

## Planned Stack

- Terraform
- AWS VPC, IAM, ECR, EKS, Route53
- Argo CD
- ExternalDNS
- cert-manager
- NGINX Ingress Controller or AWS Load Balancer Controller

## Repository Structure

```text
terraform/          Root Terraform configuration, environments, and reusable modules
bootstrap/          Kubernetes platform bootstrap manifests and add-ons
docs/               Architecture notes, decisions, and screenshots
scripts/            Helper scripts for local workflows
```

## Roadmap

- [x] Bootstrap repository structure
- [ ] Add Terraform version and provider constraints
- [ ] Provision VPC and networking
- [ ] Provision ECR
- [ ] Provision EKS cluster
- [ ] Bootstrap Argo CD
- [ ] Add ingress, ExternalDNS, and cert-manager
- [ ] Document end-to-end deployment flow

## Related Repository

Application repository: [eks-gitops-platform-apps](https://github.com/Anandprakashh/eks-gitops-platform-apps)
