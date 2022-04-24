# EXAMPLE 01 PACKER

## What we will be doing...

1. Configuring Packer to create a custom AWS Amazon Machine Image (AMI).
2. Understanding that the `cool-ubuntu-aws-ami.json` file contains the necessary Packer configurations for the AMI.
3. Implementing the `install-docker.sh` file to show how to run commands on our custom AMIs.
4. Multiple Packer commands to create the custom AMI.

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
AWS_ACCESS_KEY_ID="<KEY1>"
AWS_SECRET_ACCESS_KEY="<KEY2>"
AWS_ACCOUNT_ID="<ID>"
```

<br>

## Commands to run

In this example we will be using the following commands:

```bash
packer validate cool-ubuntu-aws-ami.json
```

```bash
packer build cool-ubuntu-aws-ami.json
```

> At the end, remember to deregister the AMI and its associated snapshot to reduce costs.
