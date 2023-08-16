terraform {
  required_providers {
    dcnm = {
      source = "CiscoDevNet/dcnm"
      # version = "0.0.5"
    }
  }
}

### Note: If using DCNM to assign VNIs use -parallelism=1 flag with Terraform 

provider "dcnm" {
  username = var.dcnm_user
  password = var.dcnm_password
  url      = var.dcnm_url
  insecure = true
  platform = var.platform
}

## Read Switch Inventory ##
data "dcnm_inventory" "switches" {
  for_each = var.switches

  fabric_name = each.value.fabric
  switch_name = each.value.name
}

## Build Local Dictionaries
# - serial_numbers: Switch Name -> Serial Number

locals {
  serial_numbers = {
      for switch in data.dcnm_inventory.switches :
          switch.switch_name => switch.serial_number
  }
}

output "serial_numbers" {
  value = local.serial_numbers
}
