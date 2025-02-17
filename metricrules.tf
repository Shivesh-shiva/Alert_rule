data "azurerm_resource_group" "prod" {
  name = "ecosys-neu-prod-rsg"
}

data "azurerm_virtual_machine_scale_set" "to_monitor" {
  for_each = var.vm
  name                = each.value.vm_name
  resource_group_name = data.azurerm_resource_group.prod.name
}

data "azurerm_virtual_machine" "to_monitor" {
  for_each = var.vm
  name                = each.value.vm_name
  resource_group_name = data.azurerm_resource_group.prod.name
}


data "azurerm_monitor_action_group" "main" {
  resource_group_name = data.azurerm_resource_group.prod.name
  name                = "performance_alert"
}

resource "azurerm_monitor_metric_alert" "example" {
    for_each = var.metric
  name                = each.value.alertname
  resource_group_name = data.azurerm_resource_group.prod.name
  scopes              = [data.azurerm_virtual_machine.to_monitor[each.key]]
  description         = each.value.description#"Action will be triggered when CPU Greater than 80 Percentage."

  criteria {
    metric_namespace = each.value.metric_namespace
    metric_name      = each.value.metric_name
    aggregation      = each.value.aggregation
    operator         = each.value.operator
    threshold        = 80


  }

  action {
    action_group_id = data.azurerm_monitor_action_group.main.id
  }
}
