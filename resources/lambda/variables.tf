variable "vpc_id" {
  description = "VPC ID where the Lambda function will be deployed"
  type        = string
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)

}
