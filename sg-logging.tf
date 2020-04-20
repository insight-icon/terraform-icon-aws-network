
module "logging_sg" {
  source      = "github.com/terraform-aws-modules/terraform-aws-security-group.git?ref=v3.2.0"
  name        = var.logging_sg_name
  description = "All traffic"

  vpc_id = module.vpc.vpc_id
  tags   = merge({ Name : var.logging_sg_name }, module.label.tags)

  ingress_with_source_security_group_id = concat(local.bastion_enabled ? [{
    rule                     = "ssh-tcp"
    source_security_group_id = module.bastion_sg.this_security_group_id
    }] : [], local.monitoring_enabled ? [{
    from_port                = 9100
    to_port                  = 9100
    protocol                 = "tcp"
    description              = "Node exporter"
    source_security_group_id = module.monitoring_sg.this_security_group_id
    }, {
    from_port                = 9108
    to_port                  = 9108
    protocol                 = "tcp"
    description              = "elasticsearch_exporter"
    source_security_group_id = module.monitoring_sg.this_security_group_id
  }] : [])

  ingress_with_cidr_blocks = concat(local.bastion_enabled ? [] : [{
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    description = "Security group for ssh access from coporate ip"
    cidr_blocks = var.corporate_ip == "" ? "0.0.0.0/0" : "${var.corporate_ip}/32" }],
    [{
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      description = "http ingress"
      cidr_blocks = "0.0.0.0/0" # TODO: Fix this
  }])

  ingress_cidr_blocks = local.consul_enabled ? [module.vpc.vpc_cidr_block] : []
  ingress_rules       = local.consul_enabled ? ["consul-tcp", "consul-serf-wan-tcp", "consul-serf-wan-udp", "consul-serf-lan-tcp", "consul-serf-lan-udp", "consul-dns-tcp", "consul-dns-udp"] : []


  egress_with_cidr_blocks = [{
    from_port   = 0
    to_port     = 65535
    protocol    = -1
    description = "Egress access open to all"
    cidr_blocks = "0.0.0.0/0"
  }, ]
}
