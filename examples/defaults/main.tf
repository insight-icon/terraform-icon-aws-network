variable "aws_region" {
  default = "us-east-1"
}

provider "aws" {
  region = var.aws_region
}

module "network" {
  source = "../.."
}

output "vpc_id" {
  value = module.network.vpc_id
}
