# terraform-vcd-independent-disk

Terraform module which manages VM independent disk ressources on VMWare Cloud Director.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.9 |
| <a name="requirement_vcd"></a> [vcd](#requirement\_vcd) | >= 3.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vcd"></a> [vcd](#provider\_vcd) | 3.9.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vcd_independent_disk.independent_disk](https://registry.terraform.io/providers/vmware/vcd/latest/docs/resources/independent_disk) | resource |
| [vcd_storage_profile.storage_profile](https://registry.terraform.io/providers/vmware/vcd/latest/docs/data-sources/storage_profile) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_storage_profile_name"></a> [storage\_profile\_name](#input\_storage\_profile\_name) | Name of Storage Profile. | `string` | n/a | yes |
| <a name="input_vdc_org_name"></a> [vdc\_org\_name](#input\_vdc\_org\_name) | The name of the organization to use. | `string` | n/a | yes |
| <a name="input_bus_sub_type"></a> [bus\_sub\_type](#input\_bus\_sub\_type) | Disk bus subtype. Values can be: buslogic, lsilogic, lsilogicsas, VirtualSCSI for SCSI, ahci for SATA and (v3.6+) nvmecontroller for NVME. | `string` | `null` | no |
| <a name="input_bus_type"></a> [bus\_type](#input\_bus\_type) | Disk bus type. Values can be: IDE, SCSI, SATA, (v3.6+) NVME. Note When the disk type is IDE then VM is required to be powered off. | `string` | `null` | no |
| <a name="input_metadata_entry"></a> [metadata\_entry](#input\_metadata\_entry) | A set of metadata entries to assign. | `list(map(string))` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of this independent disk. | `string` | `null` | no |
| <a name="input_sharing_type"></a> [sharing\_type](#input\_sharing\_type) | (VCD 10.2+) This is the sharing type. Values can be: DiskSharing,ControllerSharing, or None. | `string` | `null` | no |
| <a name="input_size_in_mb"></a> [size\_in\_mb](#input\_size\_in\_mb) | Size of disk in MB. | `number` | `null` | no |
| <a name="input_vdc_name"></a> [vdc\_name](#input\_vdc\_name) | The name of VDC to use, optional if defined at provider level. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Independent Disk. |
| <a name="output_independent_disk"></a> [independent\_disk](#output\_independent\_disk) | Disk Information |
<!-- END_TF_DOCS -->

## Examples

```
module "data01" {
  source   = "git::https://github.com/noris-network/terraform-vcd-independent-disk?ref=1.0.0"
  vdc_org_name    = "myORG"
  name            = "data01"
  size_in_mb      = (1024*16)
  bus_type        = "SATA"
  bus_sub_type    = "ahci"
  storage_profile = "myDatastorePolicy"
  sharing_type    = "None"
}
```
