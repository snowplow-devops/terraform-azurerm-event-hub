[![Release][release-image]][release] [![CI][ci-image]][ci] [![License][license-image]][license] [![Registry][registry-image]][registry]

# terraform-azurerm-event-hub

A Terraform module for creating a simple event hub, along with read only and read write authorisation rules.

Deployment of resources into Azure requires the 'Contributor' role at minimum.

## Usage

```hcl
module "event_hub" {
  source = "snowplow-devops/event-hub/azurerm"

  name                = var.name
  namespace_name      = var.namespace_name
  resource_group_name = var.resource_group_name
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.58.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.58.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_eventhub.hub](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub) | resource |
| [azurerm_eventhub_authorization_rule.read_only](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub_authorization_rule) | resource |
| [azurerm_eventhub_authorization_rule.read_write](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub_authorization_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name of the event hub | `string` | n/a | yes |
| <a name="input_namespace_name"></a> [namespace\_name](#input\_namespace\_name) | Name of the namespace to deploy the eventhub into | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of resource group to deploy the eventhub into | `string` | n/a | yes |
| <a name="input_message_retention_days"></a> [message\_retention\_days](#input\_message\_retention\_days) | Number of days events are retained | `number` | `1` | no |
| <a name="input_partition_count"></a> [partition\_count](#input\_partition\_count) | Number of partitions. Changing this setting redeploys the event hub. | `number` | `2` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Event Hub ID |
| <a name="output_name"></a> [name](#output\_name) | Event Hub name |
| <a name="output_partition_ids"></a> [partition\_ids](#output\_partition\_ids) | Event Hub partition IDs |
| <a name="output_read_only_primary_connection_string"></a> [read\_only\_primary\_connection\_string](#output\_read\_only\_primary\_connection\_string) | Primary connection string for read only authentication |
| <a name="output_read_only_primary_key"></a> [read\_only\_primary\_key](#output\_read\_only\_primary\_key) | Primary key for read only authentication |
| <a name="output_read_only_secondary_connection_string"></a> [read\_only\_secondary\_connection\_string](#output\_read\_only\_secondary\_connection\_string) | Secondary connection string for read only authentication |
| <a name="output_read_only_secondary_key"></a> [read\_only\_secondary\_key](#output\_read\_only\_secondary\_key) | Secondary key for read only authentication |
| <a name="output_read_write_primary_connection_string"></a> [read\_write\_primary\_connection\_string](#output\_read\_write\_primary\_connection\_string) | Primary connection string for read write authentication |
| <a name="output_read_write_primary_key"></a> [read\_write\_primary\_key](#output\_read\_write\_primary\_key) | Primary key for read write authentication |
| <a name="output_read_write_secondary_connection_string"></a> [read\_write\_secondary\_connection\_string](#output\_read\_write\_secondary\_connection\_string) | Secondary connection string for read write authentication |
| <a name="output_read_write_secondary_key"></a> [read\_write\_secondary\_key](#output\_read\_write\_secondary\_key) | Secondary key for read write authentication |

# Copyright and license

The Terraform Azurerm Event Hub project is Copyright 2023-present Snowplow Analytics Ltd.

Licensed under the [Snowplow Community License](https://docs.snowplow.io/community-license-1.0). _(If you are uncertain how it applies to your use case, check our answers to [frequently asked questions](https://docs.snowplow.io/docs/contributing/community-license-faq/).)_

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

[release]: https://github.com/snowplow-devops/terraform-azurerm-event-hub/releases/latest
[release-image]: https://img.shields.io/github/v/release/snowplow-devops/terraform-azurerm-event-hub

[ci]: https://github.com/snowplow-devops/terraform-azurerm-event-hub/actions?query=workflow%3Aci
[ci-image]: https://github.com/snowplow-devops/terraform-azurerm-event-hub/workflows/ci/badge.svg

[license]: https://docs.snowplow.io/docs/contributing/community-license-faq/
[license-image]: https://img.shields.io/badge/license-Snowplow--Community-blue.svg?style=flat

[registry]: https://registry.terraform.io/modules/snowplow-devops/event-hub/azurerm/latest
[registry-image]: https://img.shields.io/static/v1?label=Terraform&message=Registry&color=7B42BC&logo=terraform
