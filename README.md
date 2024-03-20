# Static Website on S3 using Terraform

This repository contains the Terraform configuration files to deploy a static website on AWS S3.

## Overview

This project utilizes Terraform to provision the necessary AWS resources for hosting a static website on Amazon S3. By using Terraform, you can easily manage and automate the infrastructure deployment process.

## Prerequisites

Before getting started, make sure you have the following:

- [Terraform](https://www.terraform.io/) installed on your local machine.
- AWS account credentials configured with appropriate permissions.

## Deployment Steps

1. Clone this repository to your local machine.
   ```bash
   git clone https://github.com/your-username/your-repo.git
   
2. Navigate to the project directory.
   ```bash
   cd your-repo

3. Initialize Terraform.
   ```bash
   terraform init

4. Plan Terraform.
   ```bash
   terraform plan

5. Apply your changes to Terraform
   ```bash
   terraform apply
   
# Cleanup

  To avoid incurring unnecessary charges, make sure to destroy the Terraform-managed infrastructure when it's no longer needed.
  ```bash
  terraform destroy


