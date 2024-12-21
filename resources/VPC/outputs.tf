# VPC Outputs
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.localstack_vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.localstack_vpc.vpc_cidr_block
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = module.localstack_vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value       = module.localstack_vpc.private_subnet_ids
}

output "nat_gateway_ips" {
  description = "List of NAT Gateway public IPs"
  value       = module.localstack_vpc.nat_gateway_ips
}

# Add any other resource outputs from other modules here
# For example, if you have EC2 instances, RDS, etc.
