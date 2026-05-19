variable "aws_region" {
  description = "AWS region for infrastructure deployment"
  type        = string
  default     = "eu-west-2"
}

variable "environment" {
  description = "Deployment environment name"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "eks-gitops-platform"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "eks-gitops-dev"
}