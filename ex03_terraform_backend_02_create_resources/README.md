# EXAMPLE 03 TERRAFORM BACKEND PART 02

## What we will be doing...

1. Creating a couple of resources and storing the state inside an specific bucket for the "Terraform Backend".
2. Validate that the state is stored remotely in the S3 bucket at `dev/state` after executing the terraform commands.

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

## Important commands...

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
terraform destroy
```
