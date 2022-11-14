### FABRIC INVENTORY ###
switches = {
  ### DC1 Spines - for completeness ###
  dc1-spine-1 = {
    name    = "DC1-SPINE-1"
    fabric  = "AUTOMATION-LAB-DC1"
  }
  dc1-spine-2 = {
    name    = "DC1-SPINE-2"
    fabric  = "AUTOMATION-LAB-DC1"
  }
  ### DC1 Anycast Border Gateways ###
  dc1-abgw-1 = {
    name    = "DC1-ABGW-1"
    fabric  = "AUTOMATION-LAB-DC1"
  }
  dc1-abgw-2 = {
    name    = "DC1-ABGW-2"
    fabric  = "AUTOMATION-LAB-DC1"
  }
  ### DC1 Compute Leaves ###
  dc1-leaf-1 = {
    name    = "DC1-LEAF-1"
    fabric  = "AUTOMATION-LAB-DC1"
  }
  dc1-leaf-2 = {
    name    = "DC1-LEAF-2"
    fabric  = "AUTOMATION-LAB-DC1"
  }
  dc1-leaf-3 = {
    name    = "DC1-LEAF-3"
    fabric  = "AUTOMATION-LAB-DC1"
  }
  dc1-leaf-4 = {
    name    = "DC1-LEAF-4"
    fabric  = "AUTOMATION-LAB-DC1"
  }
  # dc1-leaf-5 = {
  #   name    = "DC1-LEAF-5"
  #   fabric  = "AUTOMATION-LAB-DC1"
  # }
  # dc1-leaf-6 = {
  #   name    = "DC1-LEAF-6"
  #   fabric  = "AUTOMATION-LAB-DC1"
  # }
  ### DC2 VPC Border Gateways ###
  dc2-vbgw-1 = {
    name    = "DC2-VBGW-1"
    fabric  = "AUTOMATION-LAB-DC2"
  }
  dc2-vbgw-2 = {
    name    = "DC2-VBGW-2"
    fabric  = "AUTOMATION-LAB-DC2"
  }
}
