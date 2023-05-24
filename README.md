# project-terraform

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.myrg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_subnet.subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.myvnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ad_vnet"></a> [ad\_vnet](#input\_ad\_vnet) | Name of domain controller vnet | `string` | `"infra-network"` | no |
| <a name="input_address_of_subnet"></a> [address\_of\_subnet](#input\_address\_of\_subnet) | n/a | `string` | `"10.2.0.0/24"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | n/a | yes |
| <a name="input_is_public"></a> [is\_public](#input\_is\_public) | n/a | `list(bool)` | <pre>[<br>  true,<br>  true,<br>  true,<br>  false,<br>  false,<br>  false<br>]</pre> | no |
| <a name="input_prefix_name"></a> [prefix\_name](#input\_prefix\_name) | n/a | `string` | n/a | yes |
| <a name="input_subnet_range"></a> [subnet\_range](#input\_subnet\_range) | Address range for session host subnet | `list(string)` | <pre>[<br>  "10.2.0.0/24"<br>]</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map` | n/a | yes |
| <a name="input_vnet_range"></a> [vnet\_range](#input\_vnet\_range) | Address range for deployment VNet | `list(string)` | <pre>[<br>  "10.2.0.0/21"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rg_name"></a> [rg\_name](#output\_rg\_name) | Le nom du groupe de ressource |
| <a name="output_vnet_name"></a> [vnet\_name](#output\_vnet\_name) | Le nom du réseau virtuel |
| <a name="output_vnetrange"></a> [vnetrange](#output\_vnetrange) | Address range for deployment vnet |
<!-- END_TF_DOCS -->
