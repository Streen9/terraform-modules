provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "us-west-2"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  // for localstack
  # endpoints {
  #   ec2      = "http://localhost:4566"
  #   s3       = "http://localhost:4566"
  #   dynamodb = "http://localhost:4566"
  #   sns      = "http://localhost:4566"
  #   sqs      = "http://localhost:4566"
  #   lambda   = "http://localhost:4566"
  #   route53  = "http://localhost:4566"
  # }
}

resource "aws_s3_bucket" "terraform_bucket" {
  bucket = "terraform-bucket"
}

resource "aws_dynamodb_table" "terraform_table" {
  name         = "terraform-table"
  hash_key     = "id"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "id"
    type = "S"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.terraform_bucket.bucket
}

output "table_name" {
  value = aws_dynamodb_table.terraform_table.name

}
