resource "oci_fusion_apps_fusion_environment_refresh_activity" "fusion_apps_fusion_environment_refresh_activities" {
  for_each = var.fusion_apps_fusion_environment_refresh_activities

  fusion_environment_id        = each.value.fusion_environment_id
  source_fusion_environment_id = each.value.source_fusion_environment_id
  is_data_masking_opted        = each.value.is_data_masking_opted

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
    }
  }
}

