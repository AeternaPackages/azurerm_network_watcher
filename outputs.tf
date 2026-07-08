# --- azurerm_network_watcher ---
output "network_watchers" {
  description = "All network_watcher resources"
  value       = module.network_watchers.network_watchers
}
output "network_watchers_location" {
  description = "List of location values across all network_watchers"
  value       = [for k, v in module.network_watchers.network_watchers : v.location]
}
output "network_watchers_name" {
  description = "List of name values across all network_watchers"
  value       = [for k, v in module.network_watchers.network_watchers : v.name]
}
output "network_watchers_resource_group_name" {
  description = "List of resource_group_name values across all network_watchers"
  value       = [for k, v in module.network_watchers.network_watchers : v.resource_group_name]
}
output "network_watchers_tags" {
  description = "List of tags values across all network_watchers"
  value       = [for k, v in module.network_watchers.network_watchers : v.tags]
}


# --- azurerm_network_connection_monitor ---
output "network_connection_monitors" {
  description = "All network_connection_monitor resources"
  value       = module.network_connection_monitors.network_connection_monitors
}
output "network_connection_monitors_endpoint" {
  description = "List of endpoint values across all network_connection_monitors"
  value       = [for k, v in module.network_connection_monitors.network_connection_monitors : v.endpoint]
}
output "network_connection_monitors_location" {
  description = "List of location values across all network_connection_monitors"
  value       = [for k, v in module.network_connection_monitors.network_connection_monitors : v.location]
}
output "network_connection_monitors_name" {
  description = "List of name values across all network_connection_monitors"
  value       = [for k, v in module.network_connection_monitors.network_connection_monitors : v.name]
}
output "network_connection_monitors_network_watcher_id" {
  description = "List of network_watcher_id values across all network_connection_monitors"
  value       = [for k, v in module.network_connection_monitors.network_connection_monitors : v.network_watcher_id]
}
output "network_connection_monitors_notes" {
  description = "List of notes values across all network_connection_monitors"
  value       = [for k, v in module.network_connection_monitors.network_connection_monitors : v.notes]
}
output "network_connection_monitors_output_workspace_resource_ids" {
  description = "List of output_workspace_resource_ids values across all network_connection_monitors"
  value       = [for k, v in module.network_connection_monitors.network_connection_monitors : v.output_workspace_resource_ids]
}
output "network_connection_monitors_tags" {
  description = "List of tags values across all network_connection_monitors"
  value       = [for k, v in module.network_connection_monitors.network_connection_monitors : v.tags]
}
output "network_connection_monitors_test_configuration" {
  description = "List of test_configuration values across all network_connection_monitors"
  value       = [for k, v in module.network_connection_monitors.network_connection_monitors : v.test_configuration]
}
output "network_connection_monitors_test_group" {
  description = "List of test_group values across all network_connection_monitors"
  value       = [for k, v in module.network_connection_monitors.network_connection_monitors : v.test_group]
}


# --- azurerm_network_packet_capture ---
output "network_packet_captures" {
  description = "All network_packet_capture resources"
  value       = module.network_packet_captures.network_packet_captures
}
output "network_packet_captures_filter" {
  description = "List of filter values across all network_packet_captures"
  value       = [for k, v in module.network_packet_captures.network_packet_captures : v.filter]
}
output "network_packet_captures_maximum_bytes_per_packet" {
  description = "List of maximum_bytes_per_packet values across all network_packet_captures"
  value       = [for k, v in module.network_packet_captures.network_packet_captures : v.maximum_bytes_per_packet]
}
output "network_packet_captures_maximum_bytes_per_session" {
  description = "List of maximum_bytes_per_session values across all network_packet_captures"
  value       = [for k, v in module.network_packet_captures.network_packet_captures : v.maximum_bytes_per_session]
}
output "network_packet_captures_maximum_capture_duration" {
  description = "List of maximum_capture_duration values across all network_packet_captures"
  value       = [for k, v in module.network_packet_captures.network_packet_captures : v.maximum_capture_duration]
}
output "network_packet_captures_name" {
  description = "List of name values across all network_packet_captures"
  value       = [for k, v in module.network_packet_captures.network_packet_captures : v.name]
}
output "network_packet_captures_network_watcher_name" {
  description = "List of network_watcher_name values across all network_packet_captures"
  value       = [for k, v in module.network_packet_captures.network_packet_captures : v.network_watcher_name]
}
output "network_packet_captures_resource_group_name" {
  description = "List of resource_group_name values across all network_packet_captures"
  value       = [for k, v in module.network_packet_captures.network_packet_captures : v.resource_group_name]
}
output "network_packet_captures_storage_location" {
  description = "List of storage_location values across all network_packet_captures"
  value       = [for k, v in module.network_packet_captures.network_packet_captures : v.storage_location]
}
output "network_packet_captures_target_resource_id" {
  description = "List of target_resource_id values across all network_packet_captures"
  value       = [for k, v in module.network_packet_captures.network_packet_captures : v.target_resource_id]
}


# --- azurerm_network_watcher_flow_log ---
output "network_watcher_flow_logs" {
  description = "All network_watcher_flow_log resources"
  value       = module.network_watcher_flow_logs.network_watcher_flow_logs
}
output "network_watcher_flow_logs_enabled" {
  description = "List of enabled values across all network_watcher_flow_logs"
  value       = [for k, v in module.network_watcher_flow_logs.network_watcher_flow_logs : v.enabled]
}
output "network_watcher_flow_logs_location" {
  description = "List of location values across all network_watcher_flow_logs"
  value       = [for k, v in module.network_watcher_flow_logs.network_watcher_flow_logs : v.location]
}
output "network_watcher_flow_logs_name" {
  description = "List of name values across all network_watcher_flow_logs"
  value       = [for k, v in module.network_watcher_flow_logs.network_watcher_flow_logs : v.name]
}
output "network_watcher_flow_logs_network_security_group_id" {
  description = "List of network_security_group_id values across all network_watcher_flow_logs"
  value       = [for k, v in module.network_watcher_flow_logs.network_watcher_flow_logs : v.network_security_group_id]
}
output "network_watcher_flow_logs_network_watcher_name" {
  description = "List of network_watcher_name values across all network_watcher_flow_logs"
  value       = [for k, v in module.network_watcher_flow_logs.network_watcher_flow_logs : v.network_watcher_name]
}
output "network_watcher_flow_logs_resource_group_name" {
  description = "List of resource_group_name values across all network_watcher_flow_logs"
  value       = [for k, v in module.network_watcher_flow_logs.network_watcher_flow_logs : v.resource_group_name]
}
output "network_watcher_flow_logs_retention_policy" {
  description = "List of retention_policy values across all network_watcher_flow_logs"
  value       = [for k, v in module.network_watcher_flow_logs.network_watcher_flow_logs : v.retention_policy]
}
output "network_watcher_flow_logs_storage_account_id" {
  description = "List of storage_account_id values across all network_watcher_flow_logs"
  value       = [for k, v in module.network_watcher_flow_logs.network_watcher_flow_logs : v.storage_account_id]
}
output "network_watcher_flow_logs_tags" {
  description = "List of tags values across all network_watcher_flow_logs"
  value       = [for k, v in module.network_watcher_flow_logs.network_watcher_flow_logs : v.tags]
}
output "network_watcher_flow_logs_target_resource_id" {
  description = "List of target_resource_id values across all network_watcher_flow_logs"
  value       = [for k, v in module.network_watcher_flow_logs.network_watcher_flow_logs : v.target_resource_id]
}
output "network_watcher_flow_logs_traffic_analytics" {
  description = "List of traffic_analytics values across all network_watcher_flow_logs"
  value       = [for k, v in module.network_watcher_flow_logs.network_watcher_flow_logs : v.traffic_analytics]
}
output "network_watcher_flow_logs_version" {
  description = "List of version values across all network_watcher_flow_logs"
  value       = [for k, v in module.network_watcher_flow_logs.network_watcher_flow_logs : v.version]
}



