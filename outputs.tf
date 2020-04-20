

output "cluster_name" {
  value = local.cluster_name
}


#####
# SGs
#####
output "bastion_security_group_id" {
  value = module.bastion_sg.this_security_group_id
}

//output "citizen_security_group_id" {
//  value = module.citizen_sg.this_security_group_id
//}

output "consul_security_group_id" {
  value = module.consul_sg.this_security_group_id
}

output "hids_security_group_id" {
  value = module.hids_sg.this_security_group_id
}

output "k8s_security_group_id" {
  value = module.k8s_sg.this_security_group_id
}

output "logging_security_group_id" {
  value = module.logging_sg.this_security_group_id
}

output "monitoring_security_group_id" {
  value = module.monitoring_sg.this_security_group_id
}

output "prep_security_group_id" {
  value = module.prep_sg.this_security_group_id
}

output "sentry_security_group_id" {
  value = module.sentry_node_sg.this_security_group_id
}

output "vault_security_group_id" {
  value = module.vault_sg.this_security_group_id
}

#####
# VPC
#####
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "public_subnet_cidr_blocks" {
  value = module.vpc.public_subnets_cidr_blocks
}

output "private_subnets_cidr_blocks" {
  value = module.vpc.private_subnets_cidr_blocks
}

output "azs" {
  value = module.vpc.azs
}
