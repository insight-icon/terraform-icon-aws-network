# terraform-icon-aws-network

[![open-issues](https://img.shields.io/github/issues-raw/insight-icon/terraform-icon-aws-network?style=for-the-badge)](https://github.com/insight-icon/terraform-icon-aws-network/issues)
[![open-pr](https://img.shields.io/github/issues-pr-raw/insight-icon/terraform-icon-aws-network?style=for-the-badge)](https://github.com/insight-icon/terraform-icon-aws-network/pulls)

## Features

This module sets up VPCs and security groups for the ICON Blockchain. 

## Terraform Versions

For Terraform v0.12.0+

## Usage

Basic:
```hcl-terraform
module "this" {
  source = "github.com/insight-icon/terraform-icon-aws-network"
}
```
All enabled:
```hcl-terraform
module "this" {
  source = "github.com/insight-icon/terraform-icon-aws-network"
  all_enabled = true 
}
```

## Examples

- [defaults](https://github.com/insight-icon/terraform-icon-aws-network/tree/master/examples/defaults)

## Known  Issues
No issue is creating limit on this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| all\_enabled | Bool to enable all the security groups | `bool` | `false` | no |
| azs | List of availability zones | `list(string)` | `[]` | no |
| bastion\_enabled | Boolean to enable a bastion host.  All ssh traffic restricted to bastion | `bool` | `false` | no |
| bastion\_sg\_name | Name for the bastion security group | `string` | `"bastion-sg"` | no |
| cidr | The cidr range for network | `string` | `"10.0.0.0/16"` | no |
| citizen\_enabled | Boolean to allow citizen traffic | `bool` | `false` | no |
| citizen\_sg\_name | Name for the citizen security group | `string` | `"citizen-sg"` | no |
| cluster\_name | k8s cluster name - blank gets random pet | `string` | `""` | no |
| consul\_enabled | Boolean to allow consul traffic | `bool` | `false` | no |
| consul\_sg\_name | Name for the consult security group | `string` | `"consul-sg"` | no |
| corporate\_ip | The corporate IP you want to restrict ssh traffic to | `string` | `""` | no |
| environment | The environment | `string` | `"dev"` | no |
| hids\_enabled | Boolean to enable intrusion detection systems traffic | `bool` | `false` | no |
| hids\_sg\_name | Name for the HIDS security group | `string` | `"hids-sg"` | no |
| k8s\_enabled | Boolean to allow vault related traffic | `bool` | `false` | no |
| k8s\_sg\_name | Name for the consult security group | `string` | `"k8s-sg"` | no |
| logging\_enabled | Boolean to allow logging related traffic | `bool` | `false` | no |
| logging\_sg\_name | Name for the logging security group | `string` | `"logging-sg"` | no |
| monitoring\_enabled | Boolean to for prometheus related traffic | `bool` | `false` | no |
| monitoring\_sg\_name | Name for the monitoring security group | `string` | `"monitoring-sg"` | no |
| namespace | The namespace to deploy into | `string` | `"icon"` | no |
| network\_name | The network name, ie kusama / mainnet | `string` | `"testnet"` | no |
| num\_azs | The number of AZs to deploy into | `number` | `0` | no |
| owner | the owner of network | `string` | `"insight"` | no |
| prep\_enabled | Boolean to allow prep related traffic | `bool` | `false` | no |
| prep\_sg\_name | Name for the public node security group | `string` | `"prep-sg"` | no |
| sentry\_enabled | Boolean to allow vault related traffic | `bool` | `false` | no |
| sentry\_sg\_name | Name for the public node security group | `string` | `"sentry-sg"` | no |
| vault\_enabled | Boolean to allow vault related traffic | `bool` | `false` | no |
| vault\_sg\_name | Name for the vault security group | `string` | `"vault-sg"` | no |
| vpc\_name | The name of the VPC | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| azs | n/a |
| bastion\_security\_group\_id | #### SGs #### |
| cluster\_name | n/a |
| consul\_security\_group\_id | n/a |
| hids\_security\_group\_id | n/a |
| k8s\_security\_group\_id | n/a |
| logging\_security\_group\_id | n/a |
| monitoring\_security\_group\_id | n/a |
| prep\_security\_group\_id | n/a |
| private\_subnets | n/a |
| private\_subnets\_cidr\_blocks | n/a |
| public\_subnet\_cidr\_blocks | n/a |
| public\_subnets | n/a |
| sentry\_security\_group\_id | n/a |
| vault\_security\_group\_id | n/a |
| vpc\_id | #### VPC #### |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Testing
This module has been packaged with terratest tests

To run them:

1. Install Go
2. Run `make test-init` from the root of this repo
3. Run `make test` again from root

## Authors

Module managed by [insight-icon](https://github.com/insight-icon)

## Credits

- [Anton Babenko](https://github.com/antonbabenko)

## License

Apache 2 Licensed. See LICENSE for full details.