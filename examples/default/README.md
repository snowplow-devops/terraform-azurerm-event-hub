## Default Event Hub

By default this module creates a simple Event Hub along with two authorisation rules for read only and read write access, respectively.

```hcl
  source = "snowplow-devops/event-hub/azure"

  name                = var.hub_name
  namespace_name      = var.namespace_name
  resource_group_name = var.resource_group_name
}
```
 