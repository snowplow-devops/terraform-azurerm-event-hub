resource "azurerm_eventhub" "hub" {
  name                = var.name
  namespace_name      = var.namespace_name
  resource_group_name = var.resource_group_name
  partition_count     = var.partition_count
  message_retention   = var.message_retention_days
}

resource "azurerm_eventhub_authorization_rule" "read_only" {
  name                = "${var.name}-read-only"
  eventhub_name       = azurerm_eventhub.hub.name
  namespace_name      = azurerm_eventhub.hub.namespace_name
  resource_group_name = var.resource_group_name
  listen              = true
  send                = false
  manage              = false
}

resource "azurerm_eventhub_authorization_rule" "read_write" {
  name                = "${var.name}-read-write"
  eventhub_name       = azurerm_eventhub.hub.name
  namespace_name      = azurerm_eventhub.hub.namespace_name
  resource_group_name = var.resource_group_name
  listen              = true
  send                = true
  manage              = false
}
