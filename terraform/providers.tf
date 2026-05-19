provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "eks-gitops-platform"
      Environment = var.environment
      ManagedBy   = "terraform"
      Repository  = "eks-gitops-platform-infra"
    }
  }
}
