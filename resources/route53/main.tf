# Add this to your existing main.tf
module "route53" {
  source = "../../modules/route53"

  domain_name = "kali.com"
  environment = "localstack"
  project     = "localstack"

  # Example A records
  a_records = [
    {
      name    = "www"
      records = ["192.0.2.1"]
      ttl     = 300
    },
    {
      name    = "api"
      records = ["192.0.2.2"]
      ttl     = 300
    }
  ]

  # Example CNAME records
  cname_records = [
    {
      name   = "mail"
      record = "mail.kali.com"
      ttl    = 300
    }
  ]

  # Example alias records (e.g., for ALB)
  alias_records = [
    {
      name                   = "app"
      alias_target           = "your-alb-dns-name"
      alias_zone_id          = "your-alb-zone-id"
      evaluate_target_health = false
    }
  ]

  tags = {
    Environment = "localstack"
    Project     = "localstack"
  }
}
