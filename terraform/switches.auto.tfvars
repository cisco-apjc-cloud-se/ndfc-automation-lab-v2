### FABRIC INVENTORY ###
switches = {
  ### DC1 Spines - for completeness ###
  dc1-spine1 = {
    name    = "DC1-SPINE-1"
    fabric  = "AUTOMATION-LAB-DC1"
  }
  dc1-spine2 = {
    name    = "DC1-SPINE-2"
    fabric  = "AUTOMATION-LAB-DC1"
  }
  ### DC1 Anycast Border Gateways ###
  dc1-abgw1 = {
    name    = "DC1-ABGW-1"
    fabric  = "AUTOMATION-LAB-DC1"
  }
  dc1-abgw2 = {
    name    = "DC1-ABGW-2"
    fabric  = "AUTOMATION-LAB-DC1"
  }
  ### DC1 Compute Leaves ###
  dc1-leaf1 = {
    name    = "DC1-LEAF-1"
    fabric  = "AUTOMATION-LAB-DC1"
  }
  dc1-leaf2 = {
    name    = "DC1-LEAF-2"
    fabric  = "AUTOMATION-LAB-DC1"
  }
  dc1-leaf3 = {
    name    = "DC1-LEAF-3"
    fabric  = "AUTOMATION-LAB-DC1"
  }
  dc1-leaf4 = {
    name    = "DC1-LEAF-4"
    fabric  = "AUTOMATION-LAB-DC1"
  }
  # dc1-leaf5 = {
  #   name    = "DC1-LEAF-5"
  #   fabric  = "AUTOMATION-LAB-DC1"
  # }
  # dc1-leaf6 = {
  #   name    = "DC1-LEAF-6"
  #   fabric  = "AUTOMATION-LAB-DC1"
  # }
  ### DC2 VPC Border Gateways ###
  dc2-vbgw1 = {
    name    = "DC2-VBGW-1"
    fabric  = "AUTOMATION-LAB-DC2"
  }
  dc2-vbgw2 = {
    name    = "DC2-VBGW-2"
    fabric  = "AUTOMATION-LAB-DC2"
  }
}
