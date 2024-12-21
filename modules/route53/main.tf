# Create the primary hosted zone
resource "aws_route53_zone" "primary" {
  name = var.domain_name
  
  tags = merge(
    {
      Name        = var.domain_name
      Environment = var.environment
      Project     = var.project
    },
    var.tags
  )
}

# Create A records
resource "aws_route53_record" "a_records" {
  for_each = { for record in var.a_records : record.name => record }

  zone_id = aws_route53_zone.primary.zone_id
  name    = each.value.name
  type    = "A"
  ttl     = each.value.ttl

  records = each.value.records
}

# Create CNAME records
resource "aws_route53_record" "cname_records" {
  for_each = { for record in var.cname_records : record.name => record }

  zone_id = aws_route53_zone.primary.zone_id
  name    = each.value.name
  type    = "CNAME"
  ttl     = each.value.ttl

  records = [each.value.record]
}

# Create alias records (e.g., for ALB, CloudFront, etc.)
resource "aws_route53_record" "alias_records" {
  for_each = { for record in var.alias_records : record.name => record }

  zone_id = aws_route53_zone.primary.zone_id
  name    = each.value.name
  type    = "A"

  alias {
    name                   = each.value.alias_target
    zone_id               = each.value.alias_zone_id
    evaluate_target_health = each.value.evaluate_target_health
  }
}