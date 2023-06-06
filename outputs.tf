output "id" {
  value       = azurerm_eventhub.hub.id
  description = "Event Hub ID"
}

output "name" {
  value       = azurerm_eventhub.hub.name
  description = "Event Hub name"
}

output "partition_ids" {
  value       = azurerm_eventhub.hub.partition_ids
  description = "Event Hub partition IDs"
}

output "read_only_primary_connection_string" {
  value       = azurerm_eventhub_authorization_rule.read_only.primary_connection_string
  description = "Primary connection string for read only authentication"
  sensitive   = true
}

output "read_only_primary_key" {
  value       = azurerm_eventhub_authorization_rule.read_only.primary_key
  description = "Primary key for read only authentication"
  sensitive   = true
}

output "read_only_secondary_connection_string" {
  value       = azurerm_eventhub_authorization_rule.read_only.secondary_connection_string
  description = "Secondary connection string for read only authentication"
  sensitive   = true
}

output "read_only_secondary_key" {
  value       = azurerm_eventhub_authorization_rule.read_only.secondary_key
  description = "Secondary key for read only authentication"
  sensitive   = true
}

output "read_write_primary_connection_string" {
  value       = azurerm_eventhub_authorization_rule.read_write.primary_connection_string
  description = "Primary connection string for read write authentication"
  sensitive   = true
}

output "read_write_primary_key" {
  value       = azurerm_eventhub_authorization_rule.read_write.primary_key
  description = "Primary key for read write authentication"
  sensitive   = true
}

output "read_write_secondary_connection_string" {
  value       = azurerm_eventhub_authorization_rule.read_write.secondary_connection_string
  description = "Secondary connection string for read write authentication"
  sensitive   = true
}

output "read_write_secondary_key" {
  value       = azurerm_eventhub_authorization_rule.read_write.secondary_key
  description = "Secondary key for read write authentication"
  sensitive   = true
}
