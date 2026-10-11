variable "fusion_apps_fusion_environment_refresh_activities" {
  description = <<EOT
Map of fusion_apps_fusion_environment_refresh_activities, attributes below
Required:
    - fusion_environment_id
    - source_fusion_environment_id
Optional:
    - is_data_masking_opted
    - timeouts (block):
        - create (optional)
EOT

  type = map(object({
    fusion_environment_id        = string
    source_fusion_environment_id = string
    is_data_masking_opted        = optional(bool)
    timeouts = optional(object({
      create = optional(string)
    }))
  }))
}

