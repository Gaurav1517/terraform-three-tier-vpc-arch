# Creating AWS Three Tier VPC Architecture Infra-structure As Code (IAC) using Terraform

![snap-vpc-3-tier-architecture](Snap-vpc-3-tier-architecture/vcp-3-tier-architecture.png)



# Running Terraform Code: Step-by-Step Guide

This guide will help you run Terraform code effectively. Follow the steps below to get started.

## Prerequisites

1. **Install Terraform**:
   - Download Terraform from the [official website](https://www.terraform.io/downloads.html).
   - Follow the installation instructions for your operating system.

2. **Setup Environment**:
   - Ensure you have access to the cloud provider's CLI (e.g., AWS CLI, Azure CLI, or GCP CLI) installed and configured with appropriate credentials.

3. **Access the Terraform Code**:
   - Clone the repository containing the Terraform code:
     ```bash
     git clone https://github.com/Gaurav1517/terraform-three-tier-vpc-arch.git
     cd terraform-three-tier-vpc-arch
     ```

---

## Step 1: Initialize the Terraform Working Directory

Run the following command to initialize your Terraform working directory. This will download the required provider plugins and prepare the environment.
```bash
terraform init
```

---

## Step 2: Validate the Terraform Configuration Files

Validate the configuration files to ensure they are syntactically valid and properly structured:
```bash
terraform validate
```

---

## Step 3: Preview the Changes (Optional)

Generate and show the execution plan to review the changes Terraform will make to your infrastructure:
```bash
terraform plan
```

---

## Step 4: Apply the Configuration

Apply the configuration to create or update the infrastructure:
```bash
terraform apply
```
You will be prompted to confirm the changes. Type `yes` to proceed.

---

## Step 5: Verify the Infrastructure

Once the resources are created, verify their status through your cloud provider’s console or CLI.

---

## Step 6: Destroy the Infrastructure (Optional)

If you need to clean up the resources, run the following command to destroy the infrastructure:
```bash
terraform destroy
```
You will be prompted to confirm the destruction. Type `yes` to proceed.

---

## Additional Notes

- **Terraform State File**:
  - Terraform maintains a state file to keep track of resources. Do not edit this file manually.
  - For teams, use remote state storage (e.g., S3, Azure Blob Storage) to share the state file securely.

- **Variables and Outputs**:
  - Define variables in `variables.tf` and pass them using a `terraform.tfvars` file or through CLI options.
  - Check outputs defined in `outputs.tf` after running the apply command.

- **Error Handling**:
  - Refer to the [Terraform documentation](https://www.terraform.io/docs/index.html) for troubleshooting errors.

---

## Example Commands

```bash
# Initialize Terraform
terraform init

# Validate Configuration
terraform validate

# Preview Changes
terraform plan -var-file=terraform.tfvars

# Apply Changes
terraform apply -var-file=terraform.tfvars

# Destroy Resources
terraform destroy -var-file=terraform.tfvars
```

---

Happy Terraforming!

