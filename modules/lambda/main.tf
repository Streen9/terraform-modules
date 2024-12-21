resource "aws_lambda_function" "lambda" {
  filename         = var.lambda_payload_filename
  function_name    = var.function_name
  role            = aws_iam_role.lambda_role.arn
  handler         = var.handler
  source_code_hash = filebase64sha256(var.lambda_payload_filename)
  runtime         = var.runtime

  environment {
    variables = var.environment_variables
  }

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = [aws_security_group.lambda_sg.id]
  }

  tags = var.tags
}

# IAM role for Lambda
resource "aws_iam_role" "lambda_role" {
  name = "${var.function_name}-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

# Basic Lambda execution policy
resource "aws_iam_role_policy_attachment" "lambda_basic_execution" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = aws_iam_role.lambda_role.name
}

# VPC access policy for Lambda
resource "aws_iam_role_policy_attachment" "lambda_vpc_access" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = aws_iam_role.lambda_role.name
}

# Security group for Lambda
resource "aws_security_group" "lambda_sg" {
  name        = "${var.function_name}-sg"
  description = "Security group for Lambda function ${var.function_name}"
  vpc_id      = var.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.function_name}-sg"
    }
  )
}