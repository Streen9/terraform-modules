module "localstack_vpc" {
  source = "../../modules/VPC"

  vpc_cidr    = "10.0.0.0/16"
  environment = "production"

  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnets = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]

  availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]

  enable_nat_gateway = true
  enable_flow_logs   = true

  tags = {
    Project     = "localstack"
    Environment = "localstack"
    Terraform   = "true"
  }
}
