# EXAMPLE 04 TERRAFORM

## What we will be doing...

1. Creating a VPC.
2. Creating an Internet Gateway.
3. Creating a custom Route Table.
4. Creating a Subnet for the VPC.
5. Associating a Subnet with the Route Table.
6. Creating a Security Group to allow ports 22, 80, 443 and 5000.
7. Creating a Network Interface with an IP in the Subnet that was created in
   step number 4.
8. Assigning an Elastic IP to the Network Interface created in step number 7.
9. Creating an Ubuntu server and installing apache2.

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
terraform plan --var-file dev.tfvars.json
```

```bash
terraform apply --var-file dev.tfvars.json --auto-approve
```

```bash
terraform destroy --var-file dev.tfvars.json --auto-approve
```
