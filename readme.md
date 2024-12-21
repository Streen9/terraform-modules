## Terraform Localstack Project Documentation
### Project Structure

```md

.gitignore
lambda/
    index.py
main.tf
modules/
    amplify_app/
        main.tf
        outputs.tf
        variables.tf
    lambda/
        main.tf
        outputs.tf
        variables.tf
    route53/
        main.tf
        outputs.tf
        variables.tf
    VPC/
        main.tf
        outputs.tf
        variables.tf
outputs.tf
provider.tf
resources/
    amplify_app/
        main.tf
        outputs.tf
        variables.tf
    lambda/
        main.tf
        ...
    route53/
    VPC/

```

### Overview
This project uses Terraform to manage AWS infrastructure with Localstack for local development and testing. The infrastructure includes VPC, Lambda functions, Route53 DNS, and Amplify applications.

# Directory Structure

- `.terraform/`: Contains Terraform modules and providers.
- `lambda/`: Contains the Lambda function code.
- `modules/`: Contains reusable Terraform modules for different components.
  - `amplify_app/`: Module for Amplify application.
  - `lambda/`: Module for Lambda functions.
  - `route53/`: Module for Route53 DNS.
  - `VPC/`: Module for VPC configuration.
- `resources/`: Contains resource-specific Terraform configurations.
  - `amplify_app/`: Configuration for Amplify application.
  - `lambda/`: Configuration for Lambda functions.
  - `route53/`: Configuration for Route53 DNS.
  - `VPC/`: Configuration for VPC.
- `main.tf`: Main Terraform configuration file.
- `outputs.tf`: Outputs for the Terraform configuration.
- `provider.tf`: Provider configuration for Terraform.
- `terraform.tfstate`: State file for Terraform.
- `terraform.tfstate.backup`: Backup of the state file.

# Key Files

- `main.tf`: Main Terraform configuration file.
- `outputs.tf`: Defines the outputs for the Terraform configuration.
- `provider.tf`: Configures the Terraform provider.
- `terraform.tfstate`: Stores the state of the Terraform-managed infrastructure.
- `terraform.tfstate.backup`: Backup of the Terraform state file.

# Modules

## Amplify App

- `modules/amplify_app/main.tf`: Defines the Amplify application resources.
- `modules/amplify_app/outputs.tf`: Outputs for the Amplify application module.
- `modules/amplify_app/variables.tf`: Variables for the Amplify application module.


# Route53

- `modules/route53/main.tf`: Defines the Route53 DNS resources.
- `modules/route53/outputs.tf`: Outputs for the Route53 module.
- `modules/route53/variables.tf`: Variables for the Route53 module.

# VPC

- `modules/VPC/main.tf`: Defines the VPC resources.
- `modules/VPC/outputs.tf`: Outputs for the VPC module.
- `modules/VPC/variables.tf`: Variables for the VPC module.

# Resources

## Amplify App

- `resources/amplify_app/main.tf`: Configuration for the Amplify application.
- `resources/amplify_app/outputs.tf`: Outputs for the Amplify application.
- `resources/amplify_app/variables.tf`: Variables for the Amplify application.

## Lambda

- `resources/lambda/main.tf`: Configuration for the Lambda functions.
- `resources/lambda/outputs.tf`: Outputs for the Lambda functions.
- `resources/lambda/variables.tf`: Variables for the Lambda functions.

## Route53

- `resources/route53/main.tf`: Configuration for the Route53 DNS.
- `resources/route53/outputs.tf`: Outputs for the Route53 DNS.
- `resources/route53/variables.tf`: Variables for the Route53 DNS.

## VPC

- `resources/VPC/main.tf`: Configuration for the VPC.
- `resources/VPC/outputs.tf`: Outputs for the VPC.
- `resources/VPC/variables.tf`: Variables for the VPC.


Here’s the extracted text formatted into Markdown:


# Usage for Localstack

1. **Initialize Terraform Localstack:**

   ```bash
   tflocal init
   ```

2. **Plan the Infrastructure:**

   ```bash
   tflocal plan
   ```

3. **Apply the Configuration:**

   ```bash
   tflocal apply
   ```

4. **Destroy the Infrastructure:**

   ```bash
   tflocal destroy
   ```


# Usage for Terraform

1. **Initialize Terraform:**

   ```bash
   terraform init
   ```

2. **Plan the Infrastructure:**

   ```bash
   terraform plan
   ```

3. **Apply the Configuration:**

   ```bash
   terraform apply
   ```

4. **Destroy the Infrastructure:**

   ```bash
   terraform destroy
   ```

# Notes
- The project uses Localstack for local development and testing.
- Ensure Localstack is running before applying the Terraform configuration.
- The `.gitignore` file is configured to ignore Terraform state files and other sensitive information.

