output "agent_pools_lookup_id" {
  description = "Map of id values across all agent_pools_lookup, keyed the same as var.agent_pools_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_agent_pools.agent_pools_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "agent_pools_lookup_agent_pools" {
  description = "Map of agent_pools values across all agent_pools_lookup, keyed the same as var.agent_pools_lookup except keys with no agent_pools are omitted"
  value       = { for k, v in data.azuredevops_agent_pools.agent_pools_lookup : k => v.agent_pools if v.agent_pools != null && length(v.agent_pools) > 0 }
}

