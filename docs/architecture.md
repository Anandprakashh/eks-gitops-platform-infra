# Architecture Overview

This project is split into two repositories:

1. **eks-gitops-platform-infra**  
   Provisions AWS infrastructure using Terraform.

2. **eks-gitops-platform-apps**  
   Contains the FastAPI application, Kubernetes manifests, and GitHub Actions workflows.

## MVP Architecture

The MVP platform includes:

- AWS VPC with public and private subnets
- Amazon EKS cluster with managed node group
- Amazon ECR for container images
- Argo CD for GitOps application delivery
- ExternalDNS for DNS record management
- cert-manager for TLS certificate automation
- Ingress controller for external traffic routing
- FastAPI sample service deployed through Argo CD

## Deployment Flow

1. Terraform provisions AWS infrastructure.
2. The FastAPI application is built in GitHub Actions.
3. The container image is pushed to Amazon ECR.
4. Kubernetes manifests in the apps repository are updated.
5. Argo CD syncs the desired state into the EKS cluster.
