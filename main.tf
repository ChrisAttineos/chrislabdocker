terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
    region     = "eu-west-3"
    accesskey   = ${{ secrets.AWS_ACCESSKEY }}
    secretkey   = ${{ secrets.AWS_SECRETKEY }}
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "tfmy-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["eu-west-3"]
  private_subnets = ["10.0.1.0/24"]
  public_subnets  = ["10.0.101.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
