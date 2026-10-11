data "azuredevops_agent_pools" "agent_pools_lookup" {
  for_each = var.agent_pools_lookup


  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

