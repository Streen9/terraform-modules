variable "domain_name" {
  description = "The domain name for the hosted zone"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "project" {
  description = "Project name"
  type        = string
}

variable "a_records" {
  description = "List of A records to create"
  type = list(object({
    name    = string
    records = list(string)
    ttl     = number
  }))
  default = []
}

variable "cname_records" {
  description = "List of CNAME records to create"
  type = list(object({
    name   = string
    record = string
    ttl    = number
  }))
  default = []
}

variable "alias_records" {
  description = "List of alias records to create"
  type = list(object({
    name                  = string
    alias_target         = string
    alias_zone_id        = string
    evaluate_target_health = bool
  }))
  default = []
}

variable "tags" {
  description = "Additional tags for the resources"
  type        = map(string)
  default     = {}
}