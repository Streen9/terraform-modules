# Add these to your existing outputs.tf

# Lambda Outputs
output "lambda_function_arn" {
  description = "ARN of the Lambda function"
  value       = module.lambda.lambda_function_arn
}

output "lambda_function_name" {
  description = "Name of the Lambda function"
  value       = module.lambda.lambda_function_name
}

output "lambda_function_invoke_arn" {
  description = "Invoke ARN of the Lambda function"
  value       = module.lambda.lambda_function_invoke_arn
}

output "lambda_role_arn" {
  description = "ARN of the Lambda IAM role"
  value       = module.lambda.lambda_role_arn
}

output "lambda_security_group_id" {
  description = "ID of the Lambda security group"
  value       = module.lambda.lambda_security_group_id
}
