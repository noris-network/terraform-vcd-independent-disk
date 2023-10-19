output "id" {
  description = "The ID of the Independent Disk."
  value       = vcd_independent_disk.independent_disk.id
}

output "independent_disk" {
  description = "Disk Information"
  value = {
    name            = try(vcd_independent_disk.independent_disk.name, null)
    size_in_mb      = try(vcd_independent_disk.independent_disk.size_in_mb, null)
    bus_type        = try(vcd_independent_disk.independent_disk.bus_type, null)
    bus_sub_type    = try(vcd_independent_disk.independent_disk.bus_sub_type, null)
    storage_profile = try(vcd_independent_disk.independent_disk.storage_profile, null)
    sharing_type    = try(vcd_independent_disk.independent_disk.sharing_type, null)
    description     = try(vcd_independent_disk.independent_disk.description, null)
    metadata_entry  = try(vcd_independent_disk.independent_disk.metadata_entry, null)
    is_attached     = try(vcd_independent_disk.independent_disk.is_attached, null)
  }
}
