# EKS GitOps Platform Infra

Terraform-based AWS infrastructure for a portfolio-grade GitOps platform running on Amazon EKS.

## Overview
This repository provisions the cloud infrastructure for a Kubernetes platform on AWS, including networking, IAM, container registry, and EKS. It is designed to work with a separate application repository that delivers workloads through GitOps using Argo CD.

## Goals
- Build a production-style AWS EKS platform from scratch
- Demonstrate Terraform, Kubernetes, GitOps, and CI/CD skills
- Create a public portfolio project for DevOps / Platform Engineer roles

## Planned stack
- Terraform
- AWS VPC, IAM, ECR, EKS, Route53
- Argo CD
- ExternalDNS
- cert-manager
- NGINX Ingress or AWS Load Balancer Controller
