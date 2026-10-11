output "logs_pipelines_lookup_id" {
  description = "Map of id values across all logs_pipelines_lookup, keyed the same as var.logs_pipelines_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_logs_pipelines.logs_pipelines_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logs_pipelines_lookup_is_read_only" {
  description = "Map of is_read_only values across all logs_pipelines_lookup, keyed the same as var.logs_pipelines_lookup except keys with no is_read_only are omitted"
  value       = { for k, v in data.datadog_logs_pipelines.logs_pipelines_lookup : k => v.is_read_only if v.is_read_only != null && length(v.is_read_only) > 0 }
}
output "logs_pipelines_lookup_logs_pipelines" {
  description = "Map of logs_pipelines values across all logs_pipelines_lookup, keyed the same as var.logs_pipelines_lookup except keys with no logs_pipelines are omitted"
  value       = { for k, v in data.datadog_logs_pipelines.logs_pipelines_lookup : k => v.logs_pipelines if v.logs_pipelines != null && length(v.logs_pipelines) > 0 }
}

