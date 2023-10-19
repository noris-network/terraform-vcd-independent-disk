data "vcd_storage_profile" "storage_profile" {
  name = var.storage_profile_name
  org  = var.vdc_org_name
  vdc  = var.vdc_name
}

resource "vcd_independent_disk" "independent_disk" {
  org             = var.vdc_org_name
  vdc             = var.vdc_name
  name            = var.name
  size_in_mb      = var.size_in_mb
  bus_type        = var.bus_type
  bus_sub_type    = var.bus_sub_type
  storage_profile = data.vcd_storage_profile.storage_profile.id
  sharing_type    = var.sharing_type

  dynamic "metadata_entry" {
    for_each = length(var.metadata_entry) > 0 ? var.metadata_entry : []
    content {
      key         = metadata_entry.value.key
      value       = metadata_entry.value.value
      type        = metadata_entry.value.type
      user_access = metadata_entry.value.user_access
      is_system   = metadata_entry.value.is_system
    }
  }
}
