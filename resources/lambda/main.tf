module "lambda" {
  source = "../../modules/lambda"

  function_name           = "localstack-lambda"
  lambda_payload_filename = "${path.root}/lambda/lambda_function.zip"
  handler                 = "index.handler"
  runtime                 = "python3.11"

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnet_ids

  environment_variables = {
    ENV_VAR_1 = "value1"
    ENV_VAR_2 = "value2"
  }

  tags = {
    Environment = "dev"
    Project     = "my-project"
  }
}
