# VPC Outputs
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value       = module.vpc.private_subnet_ids
}

output "nat_gateway_ips" {
  description = "List of NAT Gateway public IPs"
  value       = module.vpc.nat_gateway_ips
}


# Add these to your existing outputs.tf

# Route53 Outputs
output "route53_zone_id" {
  description = "The hosted zone ID"
  value       = module.route53.route53_zone_id
}

output "route53_name_servers" {
  description = "List of name servers for the hosted zone"
  value       = module.route53.route53_name_servers
}

output "route53_domain_name" {
  description = "The domain name of the hosted zone"
  value       = module.route53.route53_domain_name
}

output "app_default_domain" {
  value = module.amplify_app.app_default_domain
}
