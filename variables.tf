variable "name" {
  description = "Name of the event hub"
  type        = string
}

variable "namespace_name" {
  description = "Name of the namespace to deploy the eventhub into"
  type        = string
}

variable "resource_group_name" {
  description = "Name of resource group to deploy the eventhub into"
  type        = string
}

variable "partition_count" {
  description = "Number of partitions. Changing this setting redeploys the event hub."
  default     = 2
  type        = number
}

variable "message_retention_days" {
  description = "Number of days events are retained"
  default     = 1
  type        = number

  # https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub
  # When using a dedicated Event Hubs cluster, maximum value of message_retention is 90 days. 
  # When using a shared parent EventHub Namespace, maximum value is 7 days; or 1 day when 
  # using a Basic SKU for the shared parent EventHub Namespace.
}

