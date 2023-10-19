variable "vdc_org_name" {
  description = "The name of the organization to use."
  type        = string
}

variable "vdc_name" {
  description = "The name of VDC to use, optional if defined at provider level."
  type        = string
  default     = null
}

variable "name" {
  description = "Name of this independent disk."
  type        = string
  default     = null
}

variable "size_in_mb" {
  description = "Size of disk in MB."
  type        = number
  default     = null
}

variable "bus_type" {
  description = "Disk bus type. Values can be: IDE, SCSI, SATA, (v3.6+) NVME. Note When the disk type is IDE then VM is required to be powered off."
  type        = string
  default     = null
}

variable "bus_sub_type" {
  description = "Disk bus subtype. Values can be: buslogic, lsilogic, lsilogicsas, VirtualSCSI for SCSI, ahci for SATA and (v3.6+) nvmecontroller for NVME."
  type        = string
  default     = null
}

variable "storage_profile_name" {
  description = "Name of Storage Profile."
  type        = string
}

variable "sharing_type" {
  description = "(VCD 10.2+) This is the sharing type. Values can be: DiskSharing,ControllerSharing, or None."
  type        = string
  default     = null
}

variable "metadata_entry" {
  description = "A set of metadata entries to assign."
  type        = list(map(string))
  default     = []
}
