# EXAMPLE 04 TERRAFORM

Before running this example, remember to add the credentials to the
environment variables (in this case added to Windows Powershell):

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

In this example we will be using the following commands:

```bash
terraform init
```

```bash
terraform plan -var-file dev.tfvars.json
```

```bash
terraform apply -var-file dev.tfvars.json -auto-approve
```

```bash
terraform destroy -var-file dev.tfvars.json -auto-approve
```
