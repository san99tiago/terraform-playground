# TERRAFORM-PLAYGROUND

Learning Terraform with AWS examples.

This repository covers a simple-learning approach for Terraform and Packer with AWS. <br>
We will cover important Infrastructure as Code (IaC) concepts that support the best DevOps practices. <br>

<img src="assets/img/terraform_gif.gif" width=30%> <br>

## General Overview of this Repository

This repository is my own learning-playground for Terraform-based projects. It has different examples and the overall idea is to have fun with Infrastructure as Code projects towards AWS. <br>

The examples are simple, but they are a good way to learn terraform from "scratch". <br>

## Dependencies :vertical_traffic_light:

My advice is to primary understand the way Terraform works with basic tutorials, and then try to develop amazing project ideas based on these examples. <br>

### Software dependencies (based on project)

- [Visual Studio Code](https://code.visualstudio.com/) <br>
  Visual Studio Code is my main code editor for high-level programming. This is not absolutely necessary, but from my experience, it gives us a great performance and we can link it with Git and GitHub easily. <br>

- [Terraform](https://www.terraform.io) <br>
  Terraform is a way to codify, automate, provision and version cloud APIs into declarative configuration files. The main purpose of Terraform is to create IaC for provisioning amazing infrastructure to different clouds. <br>

- [Packer](https://www.packer.io) <br>
  Packer allows us to create identical machine images for multiple platforms from a single source configuration. We will use it to create AWS AMIs to launch custom EC2 images. <br>

## Important Terraform Remarks

Some important notes to keep in mind for the usage of Terraform are:

### Install Terraform Bin/Exe

To install Terraform, please go to [Download Terraform](https://www.terraform.io/downloads) and install the specific version for your OS. Remember to add the specific path to the binary, so that Terraform CLI can be used correctly. <br>

### Terraform Files

Terraform files usually have the `.tf` extension and there is also the `.tf.json` convention for a JSON-based variant of the language. See extra details on [Terraform Files and Directories](https://www.terraform.io/language/files). <br>

### Terraform State

One of the most important files are the `terraform.tfstate` and `terraform.tfstate.backup`, which determine the state and they can be stored locally or remotely. These files contain the state of the infrastructure and configurations related to the IaC. They also maps real world resources to the configuration and keep track of extra relevant information. You can learn more about the state in [Terraform State](https://www.terraform.io/language/state)

### Terraform Dependency Lock

Another important file is the `.terraform.lock.hcl`, which is the [Dependency Lock File](https://www.terraform.io/language/files/dependency-lock) and it tracks the provider dependencies. <br>

### Terraform Commands

- Initialize Terraform directory and downloads providers:

  ```bash
  terraform init
  ```

- Initialize Terraform directory and do not download providers:

  ```bash
  terraform init --get-plugins=false
  ```

- Download and update root modules:

  ```bash
  terraform get
  ```

- Create an execution plan:

  ```bash
  terraform plan
  ```

- Create an execution plan only for a targeted resource:

  ```bash
  terraform plan -target="random_cool_resource.random_cool_resource_name"
  ```

- Create a destroy plan:

  ```bash
  terraform plan -destroy
  ```

- Execute (apply) changes in the real environment:

  ```bash
  terraform apply
  ```

- Execute (apply) changes in the real environment with specific variable file:

  ```bash
  terraform apply --var-file dev.tfvars.json
  ```

- Execute (apply) changes only for a targeted resource:

  ```bash
  terraform apply -target="random_cool_resource.random_cool_resource_name"
  ```

- Destroy all resources:

  ```bash
  terraform destroy
  ```

- Destroy only a targeted resource:

  ```bash
  terraform destroy -target="random_cool_resource.random_cool_resource_name"
  ```

- Refresh the state of Terraform state file with real environment:

  ```bash
  terraform refresh
  ```

- Terraform workspace commands:

  ```bash
  terraform workspace new
  terraform workspace select
  terraform workspace list
  terraform workspace show
  terraform workspace delete
  ```

- Format Terraform files into HCL canonical structure:

  ```bash
  terraform fmt
  ```

- Validate Terraform files:

  ```bash
  terraform validate
  ```

- Create graph of resources and its dependencies:

  ```bash
  terraform graph
  # Copy the output to "http://webgraphviz.com"
  ```

- Enumerates all outputs from the root module:

  ```bash
  terraform output
  ```

- Enumerates an specific output from the root module:

  ```bash
  terraform output <specific_output>
  ```

- Terraform state commands:
  ```bash
  terraform state list
  terraform state list aws_instance.my_cool_ec2
  terraform state show aws_instance.my_cool_ec2
  terraform state pull
  terraform state push
  terraform state mv
  terraform state rm
  ```

## Important Packer Remarks

Some important notes to keep in mind for the usage of Packer are:

### Install Packer Bin/Exe

To install Packer, please go to [Download Packer](https://www.packer.io/downloads) and install the specific version for your OS. Remember to add the specific path to the binary, so that Packer CLI can be used correctly. <br>

### How the AMI is created

When the AMI process is being executed, it usually creates an EC2 instance called `Packer Builder`. Keep this in mind if you want to do extra debugging related to the AMI creation on AWS. <br>

### Packer Commands

- Validate a JSON file that creates an AMI:

  ```bash
  packer validate cool-ubuntu-aws-ami.json
  ```

- Build the AMI with Packer and a JSON file:
  ```bash
  packer build cool-ubuntu-aws-ami.json
  ```

## Usage :dizzy:

All projects are really well commented and most of them have specifications and remarks for their purpose and I/O. <br>
I will be uploading most of the files, and try to keep it as clean as possible. <br>

## Special thanks :gift:

- Thanks to all contributors of the great OpenSource projects that I am using. <br>

## Author :musical_keyboard:

### Santiago Garcia Arango

<table border="1">
    <tr>
        <td>
            <p align="center">Senior DevOps Engineer passionate about advanced cloud-based solutions and deployments in AWS. I am convinced that today's greatest challenges must be solved by people that love what they do.</p>
        </td>
        <td>
            <p align="center"><img src="assets/img/santi_terraform.jpg" width=60%></p>
        </td>
    </tr>
</table>
