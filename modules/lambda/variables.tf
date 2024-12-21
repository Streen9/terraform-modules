variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "lambda_payload_filename" {
  description = "Path to the Lambda deployment package"
  type        = string
}

variable "handler" {
  description = "Lambda function handler"
  type        = string
}

variable "runtime" {
  description = "Lambda function runtime"
  type        = string
}

variable "environment_variables" {
  description = "Environment variables for Lambda function"
  type        = map(string)
  default     = {}
}

variable "vpc_id" {
  description = "VPC ID where the Lambda function will be deployed"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs where the Lambda function will be deployed"
  type        = list(string)
}

variable "tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
  default     = {}
}