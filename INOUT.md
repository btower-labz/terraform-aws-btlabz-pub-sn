# Terraform inputs and outputs.


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| az | Subnet's availability zone. | string | - | yes |
| cidr | Subnet's CIDR range. | string | - | yes |
| name | Subnet name. Will be used as the 'Name' tag value. | string | `public-subnet` | no |
| rt_id | Public route table to bind subnet to. | string | - | yes |
| tags | Additional tags. | map | `<map>` | no |
| vpc_id | VPC identifier to create the subnet in. | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| subnet_id | Public subnet identifier. |

