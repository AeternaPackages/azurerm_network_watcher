variable "network_watchers" {
  description = <<EOT
Map of network_watchers, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - tags
Nested network_connection_monitors (azurerm_network_connection_monitor):
    Required:
        - location
        - name
        - endpoint (block)
        - test_configuration (block)
        - test_group (block)
    Optional:
        - notes
        - output_workspace_resource_ids
        - tags
Nested network_packet_captures (azurerm_network_packet_capture):
    Required:
        - name
        - resource_group_name
        - target_resource_id
        - storage_location (block)
    Optional:
        - maximum_bytes_per_packet
        - maximum_bytes_per_session
        - maximum_capture_duration
        - filter (block)
Nested network_watcher_flow_logs (azurerm_network_watcher_flow_log):
    Required:
        - enabled
        - name
        - resource_group_name
        - storage_account_id
        - retention_policy (block)
    Optional:
        - location
        - network_security_group_id
        - tags
        - target_resource_id
        - version
        - traffic_analytics (block)
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    tags                = optional(map(string))
    network_connection_monitors = optional(map(object({
      location                      = string
      name                          = string
      notes                         = optional(string)
      output_workspace_resource_ids = optional(set(string))
      tags                          = optional(map(string))
      endpoint = object({
        address               = optional(string)
        coverage_level        = optional(string)
        excluded_ip_addresses = optional(set(string))
        filter = optional(object({
          item = optional(object({
            address = optional(string)
            type    = optional(string) # Default: "AgentAddress"
          }))
          type = optional(string) # Default: "Include"
        }))
        included_ip_addresses = optional(set(string))
        name                  = string
        target_resource_id    = optional(string)
        target_resource_type  = optional(string)
      })
      test_configuration = object({
        http_configuration = optional(object({
          method       = optional(string) # Default: "Get"
          path         = optional(string)
          port         = optional(number)
          prefer_https = optional(bool) # Default: false
          request_header = optional(object({
            name  = string
            value = string
          }))
          valid_status_code_ranges = optional(set(string))
        }))
        icmp_configuration = optional(object({
          trace_route_enabled = optional(bool) # Default: true
        }))
        name                 = string
        preferred_ip_version = optional(string)
        protocol             = string
        success_threshold = optional(object({
          checks_failed_percent = optional(number)
          round_trip_time_ms    = optional(number)
        }))
        tcp_configuration = optional(object({
          destination_port_behavior = optional(string)
          port                      = number
          trace_route_enabled       = optional(bool) # Default: true
        }))
        test_frequency_in_seconds = optional(number) # Default: 60
      })
      test_group = object({
        destination_endpoints    = set(string)
        enabled                  = optional(bool) # Default: true
        name                     = string
        source_endpoints         = set(string)
        test_configuration_names = set(string)
      })
    })))
    network_packet_captures = optional(map(object({
      name                      = string
      resource_group_name       = string
      target_resource_id        = string
      maximum_bytes_per_packet  = optional(number) # Default: 0
      maximum_bytes_per_session = optional(number) # Default: 1073741824
      maximum_capture_duration  = optional(number) # Default: 18000
      storage_location = object({
        file_path          = optional(string)
        storage_account_id = optional(string)
      })
      filter = optional(object({
        local_ip_address  = optional(string)
        local_port        = optional(string)
        protocol          = string
        remote_ip_address = optional(string)
        remote_port       = optional(string)
      }))
    })))
    network_watcher_flow_logs = optional(map(object({
      enabled                   = bool
      name                      = string
      resource_group_name       = string
      storage_account_id        = string
      location                  = optional(string)
      network_security_group_id = optional(string)
      tags                      = optional(map(string))
      target_resource_id        = optional(string)
      version                   = optional(number) # Default: 1
      retention_policy = object({
        days    = number
        enabled = bool
      })
      traffic_analytics = optional(object({
        enabled               = bool
        interval_in_minutes   = optional(number) # Default: 60
        workspace_id          = string
        workspace_region      = string
        workspace_resource_id = string
      }))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.network_watchers) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.network_watchers : [for kk in keys(coalesce(v0.network_connection_monitors, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.network_watchers : [for kk in keys(coalesce(v0.network_packet_captures, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.network_watchers : [for kk in keys(coalesce(v0.network_watcher_flow_logs, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
