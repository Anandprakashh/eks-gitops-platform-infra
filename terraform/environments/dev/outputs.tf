output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "repository_name" {
  value = module.ecr.repository_name
}

output "repository_url" {
  value = module.ecr.repository_url
}

output "repository_arn" {
  value = module.ecr.repository_arn
}