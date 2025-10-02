# Foundation-network-with-aws-firewall

This repository contains Terraform code to build a foundational network architecture on AWS, including integration with AWS Network Firewall for traffic inspection and security enforcement in a multi-VPC environment.

# 📌 Purpose

The goal of this project is to provide an initial foundation that can be expanded later, ensuring VPC connectivity, network segmentation, and firewall protection following a hub-and-spoke design.

# 📂 Repository Structure

main.tf → Terraform main configuration

variables.tf → Variable definitions

network.tfvars → Example variable values

terraform_network_inbound.tf → Inbound firewall rules

terraform_network_outbound.tf → Outbound firewall rules

terraform_network_inspectipon.tf → Traffic inspection setup

terraform_network_tgw.tf → Transit Gateway configuration

inspection-network-firewall.tf → AWS Network Firewall setup (inspection)

outbound-network-firewall.tf → Firewall for outbound traffic

route-table.tf.bkp → Route tables configuration (backup/example)

# 🚀 Prerequisites

Terraform
 v1.5+

AWS CLI configured with valid credentials

IAM permissions to create and manage:

  VPCs
  
  Subnets
  
  Route Tables
  
  Transit Gateway
  
  Network Firewall

  # ⚙️ Usage

  ## 1. Clone the repository:

  git clone https://github.com/ederjsilva85/foundation-network-with-aws-firewall.git
cd foundation-network-with-aws-firewall

## 2. Initialize Terraform:

terraform init

## 3. Validate configuration:

terraform validate

## 4. Plan the deployment:

terraform plan -var-file="network.tfvars"

## 5. Apply the infrastructure:

terraform apply -var-file="network.tfvars" -auto-approve

## 6. Destroy the environment:

terraform destroy -var-file="network.tfvars"

# 🏗️ Architecture

The design follows a Hub-and-Spoke model with centralized firewall inspection:

Hub VPC with Transit Gateway

Spoke VPCs (workloads, apps, databases)

AWS Network Firewall inspecting inter-VPC and Internet-bound traffic

Route Tables redirecting traffic through the firewall


# 🔐 Security

AWS Network Firewall for inbound and outbound traffic inspection

Segmented VPCs and subnets for different workloads

Security policies that can be expanded for specific use cases







