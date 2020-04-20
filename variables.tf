########
# Label
########
variable "environment" {
  description = "The environment"
  type        = string
  default     = "dev"
}

variable "namespace" {
  description = "The namespace to deploy into"
  type        = string
  default     = "icon"
}

variable "network_name" {
  description = "The network name, ie kusama / mainnet"
  type        = string
  default     = "testnet"
}

variable "owner" {
  description = "the owner of network"
  type        = string
  default     = "insight"
}

######
# VPC
######
variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = ""
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
  default     = []
}

variable "num_azs" {
  description = "The number of AZs to deploy into"
  type        = number
  default     = 0
}

variable "cidr" {
  description = "The cidr range for network"
  type        = string
  default     = "10.0.0.0/16"
}


variable "cluster_name" {
  description = "k8s cluster name - blank gets random pet"
  type        = string
  default     = ""
}

##################
# Security Groups
##################
variable "corporate_ip" {
  description = "The corporate IP you want to restrict ssh traffic to"
  type        = string
  default     = ""
}

variable "bastion_enabled" {
  description = "Boolean to enable a bastion host.  All ssh traffic restricted to bastion"
  type        = bool
  default     = false
}

variable "consul_enabled" {
  description = "Boolean to allow consul traffic"
  type        = bool
  default     = false
}

variable "citizen_enabled" {
  description = "Boolean to allow citizen traffic"
  type        = bool
  default     = false
}

variable "hids_enabled" {
  description = "Boolean to enable intrusion detection systems traffic"
  type        = bool
  default     = false
}

variable "k8s_enabled" {
  description = "Boolean to allow vault related traffic"
  type        = bool
  default     = false
}

variable "logging_enabled" {
  description = "Boolean to allow logging related traffic"
  type        = bool
  default     = false
}

variable "monitoring_enabled" {
  description = "Boolean to for prometheus related traffic"
  type        = bool
  default     = false
}

variable "prep_enabled" {
  description = "Boolean to allow prep related traffic"
  type        = bool
  default     = false
}

variable "sentry_enabled" {
  description = "Boolean to allow vault related traffic"
  type        = bool
  default     = false
}

variable "vault_enabled" {
  description = "Boolean to allow vault related traffic"
  type        = bool
  default     = false
}

variable "bastion_sg_name" {
  description = "Name for the bastion security group"
  type        = string
  default     = "bastion-sg"
}

variable "citizen_sg_name" {
  description = "Name for the citizen security group"
  type        = string
  default     = "citizen-sg"
}

variable "consul_sg_name" {
  description = "Name for the consult security group"
  type        = string
  default     = "consul-sg"
}

variable "k8s_sg_name" {
  description = "Name for the consult security group"
  type        = string
  default     = "k8s-sg"
}

variable "monitoring_sg_name" {
  description = "Name for the monitoring security group"
  type        = string
  default     = "monitoring-sg"
}

variable "hids_sg_name" {
  description = "Name for the HIDS security group"
  type        = string
  default     = "hids-sg"
}

variable "logging_sg_name" {
  description = "Name for the logging security group"
  type        = string
  default     = "logging-sg"
}

variable "sentry_sg_name" {
  description = "Name for the public node security group"
  type        = string
  default     = "sentry-sg"
}

variable "prep_sg_name" {
  description = "Name for the public node security group"
  type        = string
  default     = "prep-sg"
}

variable "vault_sg_name" {
  description = "Name for the vault security group"
  type        = string
  default     = "vault-sg"
}
