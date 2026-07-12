# --- azurerm_network_watcher ---
output "network_watchers_location" {
  description = "Map of location values across all network_watchers, keyed the same as var.network_watchers"
  value       = module.network_watchers.network_watchers_location
}

output "network_watchers_name" {
  description = "Map of name values across all network_watchers, keyed the same as var.network_watchers"
  value       = module.network_watchers.network_watchers_name
}

output "network_watchers_resource_group_name" {
  description = "Map of resource_group_name values across all network_watchers, keyed the same as var.network_watchers"
  value       = module.network_watchers.network_watchers_resource_group_name
}

output "network_watchers_tags" {
  description = "Map of tags values across all network_watchers, keyed the same as var.network_watchers"
  value       = module.network_watchers.network_watchers_tags
}

# --- azurerm_network_connection_monitor ---
output "network_connection_monitors_endpoint" {
  description = "Map of endpoint values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = module.network_connection_monitors.network_connection_monitors_endpoint
}

output "network_connection_monitors_location" {
  description = "Map of location values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = module.network_connection_monitors.network_connection_monitors_location
}

output "network_connection_monitors_name" {
  description = "Map of name values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = module.network_connection_monitors.network_connection_monitors_name
}

output "network_connection_monitors_network_watcher_id" {
  description = "Map of network_watcher_id values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = module.network_connection_monitors.network_connection_monitors_network_watcher_id
}

output "network_connection_monitors_notes" {
  description = "Map of notes values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = module.network_connection_monitors.network_connection_monitors_notes
}

output "network_connection_monitors_output_workspace_resource_ids" {
  description = "Map of output_workspace_resource_ids values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = module.network_connection_monitors.network_connection_monitors_output_workspace_resource_ids
}

output "network_connection_monitors_tags" {
  description = "Map of tags values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = module.network_connection_monitors.network_connection_monitors_tags
}

output "network_connection_monitors_test_configuration" {
  description = "Map of test_configuration values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = module.network_connection_monitors.network_connection_monitors_test_configuration
}

output "network_connection_monitors_test_group" {
  description = "Map of test_group values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = module.network_connection_monitors.network_connection_monitors_test_group
}

# --- azurerm_network_packet_capture ---
output "network_packet_captures_filter" {
  description = "Map of filter values across all network_packet_captures, keyed the same as var.network_packet_captures"
  value       = module.network_packet_captures.network_packet_captures_filter
}

output "network_packet_captures_maximum_bytes_per_packet" {
  description = "Map of maximum_bytes_per_packet values across all network_packet_captures, keyed the same as var.network_packet_captures"
  value       = module.network_packet_captures.network_packet_captures_maximum_bytes_per_packet
}

output "network_packet_captures_maximum_bytes_per_session" {
  description = "Map of maximum_bytes_per_session values across all network_packet_captures, keyed the same as var.network_packet_captures"
  value       = module.network_packet_captures.network_packet_captures_maximum_bytes_per_session
}

output "network_packet_captures_maximum_capture_duration" {
  description = "Map of maximum_capture_duration values across all network_packet_captures, keyed the same as var.network_packet_captures"
  value       = module.network_packet_captures.network_packet_captures_maximum_capture_duration
}

output "network_packet_captures_name" {
  description = "Map of name values across all network_packet_captures, keyed the same as var.network_packet_captures"
  value       = module.network_packet_captures.network_packet_captures_name
}

output "network_packet_captures_network_watcher_name" {
  description = "Map of network_watcher_name values across all network_packet_captures, keyed the same as var.network_packet_captures"
  value       = module.network_packet_captures.network_packet_captures_network_watcher_name
}

output "network_packet_captures_resource_group_name" {
  description = "Map of resource_group_name values across all network_packet_captures, keyed the same as var.network_packet_captures"
  value       = module.network_packet_captures.network_packet_captures_resource_group_name
}

output "network_packet_captures_storage_location" {
  description = "Map of storage_location values across all network_packet_captures, keyed the same as var.network_packet_captures"
  value       = module.network_packet_captures.network_packet_captures_storage_location
}

output "network_packet_captures_target_resource_id" {
  description = "Map of target_resource_id values across all network_packet_captures, keyed the same as var.network_packet_captures"
  value       = module.network_packet_captures.network_packet_captures_target_resource_id
}

# --- azurerm_network_watcher_flow_log ---
output "network_watcher_flow_logs_enabled" {
  description = "Map of enabled values across all network_watcher_flow_logs, keyed the same as var.network_watcher_flow_logs"
  value       = module.network_watcher_flow_logs.network_watcher_flow_logs_enabled
}

output "network_watcher_flow_logs_location" {
  description = "Map of location values across all network_watcher_flow_logs, keyed the same as var.network_watcher_flow_logs"
  value       = module.network_watcher_flow_logs.network_watcher_flow_logs_location
}

output "network_watcher_flow_logs_name" {
  description = "Map of name values across all network_watcher_flow_logs, keyed the same as var.network_watcher_flow_logs"
  value       = module.network_watcher_flow_logs.network_watcher_flow_logs_name
}

output "network_watcher_flow_logs_network_security_group_id" {
  description = "Map of network_security_group_id values across all network_watcher_flow_logs, keyed the same as var.network_watcher_flow_logs"
  value       = module.network_watcher_flow_logs.network_watcher_flow_logs_network_security_group_id
}

output "network_watcher_flow_logs_network_watcher_name" {
  description = "Map of network_watcher_name values across all network_watcher_flow_logs, keyed the same as var.network_watcher_flow_logs"
  value       = module.network_watcher_flow_logs.network_watcher_flow_logs_network_watcher_name
}

output "network_watcher_flow_logs_resource_group_name" {
  description = "Map of resource_group_name values across all network_watcher_flow_logs, keyed the same as var.network_watcher_flow_logs"
  value       = module.network_watcher_flow_logs.network_watcher_flow_logs_resource_group_name
}

output "network_watcher_flow_logs_retention_policy" {
  description = "Map of retention_policy values across all network_watcher_flow_logs, keyed the same as var.network_watcher_flow_logs"
  value       = module.network_watcher_flow_logs.network_watcher_flow_logs_retention_policy
}

output "network_watcher_flow_logs_storage_account_id" {
  description = "Map of storage_account_id values across all network_watcher_flow_logs, keyed the same as var.network_watcher_flow_logs"
  value       = module.network_watcher_flow_logs.network_watcher_flow_logs_storage_account_id
}

output "network_watcher_flow_logs_tags" {
  description = "Map of tags values across all network_watcher_flow_logs, keyed the same as var.network_watcher_flow_logs"
  value       = module.network_watcher_flow_logs.network_watcher_flow_logs_tags
}

output "network_watcher_flow_logs_target_resource_id" {
  description = "Map of target_resource_id values across all network_watcher_flow_logs, keyed the same as var.network_watcher_flow_logs"
  value       = module.network_watcher_flow_logs.network_watcher_flow_logs_target_resource_id
}

output "network_watcher_flow_logs_traffic_analytics" {
  description = "Map of traffic_analytics values across all network_watcher_flow_logs, keyed the same as var.network_watcher_flow_logs"
  value       = module.network_watcher_flow_logs.network_watcher_flow_logs_traffic_analytics
}

output "network_watcher_flow_logs_version" {
  description = "Map of version values across all network_watcher_flow_logs, keyed the same as var.network_watcher_flow_logs"
  value       = module.network_watcher_flow_logs.network_watcher_flow_logs_version
}


