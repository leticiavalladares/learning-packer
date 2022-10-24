# Packer Labs
<!-- BEGIN_TF_DOCS -->
## Requirements

- AWS VPC

## Providers

| Name | Version |
|------|---------|
| <a name="provider_amazon-ami"></a> [amazon-ami](#provider\_amazon-ami) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [amazon-ami_amazon-ami.ubuntu](https://registry.terraform.io/providers/hashicorp/amazon-ami/latest/docs/data-sources/amazon-ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_owner"></a> [ami\_owner](#input\_ami\_owner) | Owner source | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Source EC2 instance type | `string` | `"t3.small"` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS Region | `string` | n/a | yes |
| <a name="input_source_ami_name"></a> [source\_ami\_name](#input\_source\_ami\_name) | Source AMI name | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of vpc created on my AWS account | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->