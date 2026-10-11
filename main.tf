data "datadog_logs_pipelines" "logs_pipelines_lookup" {
  for_each = var.logs_pipelines_lookup

  is_read_only = each.value.is_read_only
}

