#--------------------------------------------------------------------------------#
#   TERRAFORM PARA CRIAÇÃO DE UMA FUNDAÇÃO DE REDE PARA O PROJETO AWS FIREWALL   #
#--------------------------------------------------------------------------------#

provider "aws" {
  region = "us-east-1"
}

terraform {
  required_version = ">= 0.13.1"
 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.49"
    }
  }
}