# EXAMPLE 00 TERRAFORM

## What we will be doing...

1. Configuring Terraform settings inside the `main.tf` file.
2. Configuring AWS provider in the `main.tf` file.
3. Creating a really simple AWS resource (in this case an empty VPC called `super_simple_vpc`).
4. Using the `terraform.tfvars.json` and `variables.tf` files to configure and pass variables to the `main.tf`. 
5. Creating an `outputs.tf` file that contains the VPC ID.
6. Executing some Terraform commands to understand its behavior.


## Before running this example...

Remember to add the credentials to the environment variables via an IAM role or user and the specific AWS configuration variables.

In powershell we can run:

```bash
$env:AWS_ACCESS_KEY_ID="<KEY1>"
$env:AWS_SECRET_ACCESS_KEY="<KEY2>"
$env:AWS_ACCOUNT_ID="<ID>"
```

In Linux we can execute:

```bash
export AWS_ACCESS_KEY_ID="<KEY1>"
export AWS_SECRET_ACCESS_KEY="<KEY2>"
export AWS_ACCOUNT_ID="<ID>"
```

<br>

## Commands to run

In this example we will be using the following commands:

```bash
terraform init
```

```bash
terraform plan
```

```bash
terraform apply
```

```bash
terraform state help
```

```bash
terraform state list
```

```bash
terraform state show aws_vpc.super_simple_vpc
```

```bash
terraform destroy
```
