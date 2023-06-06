locals {
  resource_group_name = "ostfresourcegrouptest"
}

resource "azurerm_resource_group" "group" {
  name     = local.resource_group_name
  location = "North Europe"
}

module "eh_namespace" {
  source = "snowplow-devops/event-hub-namespace/azurerm"

  name                = "ostfnamespacetest"
  resource_group_name = local.resource_group_name

  depends_on = [azurerm_resource_group.group]
}

module "event_hub" {
  source = "../../"

  name                = "ostfeventhubtest"
  namespace_name      = module.eh_namespace.name
  resource_group_name = local.resource_group_name
}

