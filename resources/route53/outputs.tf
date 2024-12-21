# Add these to your existing outputs.tf

# Route53 Outputs
output "route53_zone_id" {
  description = "The hosted zone ID"
  value       = module.route53.zone_id
}

output "route53_name_servers" {
  description = "List of name servers for the hosted zone"
  value       = module.route53.name_servers
}

output "route53_domain_name" {
  description = "The domain name of the hosted zone"
  value       = module.route53.domain_name
}