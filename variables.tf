variable "logs_pipelines_lookup" {
  description = <<EOT
Map of logs_pipelines_lookup, attributes below
Optional:
    - is_read_only
EOT

  type = map(object({
    is_read_only = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.logs_pipelines_lookup : (
        v.is_read_only == null || (contains([for v in ["true", "false"] : lower(v)], lower(v.is_read_only)))
      )
    ])
    error_message = "must be one of: \"true\", \"false\""
  }
}

