output "zone_id" {
  description = "The hosted zone ID"
  value       = aws_route53_zone.primary.zone_id
}

output "name_servers" {
  description = "List of name servers for the hosted zone"
  value       = aws_route53_zone.primary.name_servers
}

output "domain_name" {
  description = "The domain name of the hosted zone"
  value       = aws_route53_zone.primary.name
}