variable "agent_pools_lookup" {
  description = <<EOT
Map of agent_pools_lookup, attributes below
Optional:
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
}

