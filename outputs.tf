output "agent_pools_lookup_id" {
  description = "Map of id values across all agent_pools_lookup, keyed the same as var.agent_pools_lookup"
  value       = { for k, v in data.azuredevops_agent_pools.agent_pools_lookup : k => v.id }
}
output "agent_pools_lookup_agent_pools" {
  description = "Map of agent_pools values across all agent_pools_lookup, keyed the same as var.agent_pools_lookup"
  value       = { for k, v in data.azuredevops_agent_pools.agent_pools_lookup : k => v.agent_pools }
}

