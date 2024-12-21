module "vpc" {
  source = "./resources/VPC"
}

module "route53" {
  source = "./resources/route53"
}
module "lambda" {
  source             = "./resources/lambda"
  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
  depends_on         = [module.vpc]
}

module "amplify_app" {
  source = "./resources/amplify_app"
}
