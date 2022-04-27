# EXAMPLE 03 TERRAFORM BACKEND PART 01

## What we will be doing...

1. Creating a bucket that will store Terraform State (Terraform Backend) for the next part.

## Before running example...

Remember to add the credentials to the environment variables via an IAM with
an associated key-pair (in this case added to Windows Powershell):

```bash
$env:AWS_ACCESS_KEY_ID="<KEY1>"
```

```bash
$env:AWS_SECRET_ACCESS_KEY="<KEY2>"
```

```bash
$env:AWS_ACCOUNT_ID="<ID>"
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
