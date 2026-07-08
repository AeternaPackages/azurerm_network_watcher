locals {
  network_watchers = { for k1, v1 in var.network_watchers : k1 => { location = v1.location, name = v1.name, resource_group_name = v1.resource_group_name, tags = v1.tags } }

  network_connection_monitors = merge([
    for k1, v1 in var.network_watchers : {
      for k2, v2 in coalesce(v1.network_connection_monitors, {}) :
      "${k1}/${k2}" => merge(v2, {
        network_watcher_id = module.network_watchers.network_watchers["${k1}"].id
      })
    }
  ]...)

  network_packet_captures = merge([
    for k1, v1 in var.network_watchers : {
      for k2, v2 in coalesce(v1.network_packet_captures, {}) :
      "${k1}/${k2}" => merge(v2, {
        network_watcher_name = module.network_watchers.network_watchers["${k1}"].name
      })
    }
  ]...)

  network_watcher_flow_logs = merge([
    for k1, v1 in var.network_watchers : {
      for k2, v2 in coalesce(v1.network_watcher_flow_logs, {}) :
      "${k1}/${k2}" => merge(v2, {
        network_watcher_name = module.network_watchers.network_watchers["${k1}"].name
      })
    }
  ]...)
}

module "network_watchers" {
  source           = "git::https://github.com/AeternaModules/azurerm_network_watcher.git?ref=v4.80.0"
  network_watchers = local.network_watchers
}

module "network_connection_monitors" {
  source                      = "git::https://github.com/AeternaModules/azurerm_network_connection_monitor.git?ref=v4.80.0"
  network_connection_monitors = local.network_connection_monitors
  depends_on                  = [module.network_watchers]
}

module "network_packet_captures" {
  source                  = "git::https://github.com/AeternaModules/azurerm_network_packet_capture.git?ref=v4.80.0"
  network_packet_captures = local.network_packet_captures
  depends_on              = [module.network_watchers]
}

module "network_watcher_flow_logs" {
  source                    = "git::https://github.com/AeternaModules/azurerm_network_watcher_flow_log.git?ref=v4.80.0"
  network_watcher_flow_logs = local.network_watcher_flow_logs
  depends_on                = [module.network_watchers]
}

