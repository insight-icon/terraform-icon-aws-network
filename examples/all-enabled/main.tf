variable "aws_region" {
  default = "us-east-1"
}

provider "aws" {
  region = var.aws_region
}

module "network" {
  source      = "../.."
  all_enabled = true
}

output "k8s_sg_id" {
  value = module.network.k8s_security_group_id
}

output "vpc_id" {
  value = module.network.vpc_id
}
