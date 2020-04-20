variable "all_enabled" {
  description = "Bool to enable all the security groups"
  type        = bool
  default     = false
}

locals {
  bastion_enabled    = var.all_enabled ? true : var.bastion_enabled
  citizen_enabled    = var.all_enabled ? true : var.citizen_enabled
  consul_enabled     = var.all_enabled ? true : var.consul_enabled
  hids_enabled       = var.all_enabled ? true : var.hids_enabled
  k8s_enabled        = var.all_enabled ? true : var.k8s_enabled
  logging_enabled    = var.all_enabled ? true : var.logging_enabled
  monitoring_enabled = var.all_enabled ? true : var.monitoring_enabled
  sentry_enabled     = var.all_enabled ? true : var.sentry_enabled
  prep_enabled       = var.all_enabled ? true : var.prep_enabled
  vault_enabled      = var.all_enabled ? true : var.vault_enabled
}