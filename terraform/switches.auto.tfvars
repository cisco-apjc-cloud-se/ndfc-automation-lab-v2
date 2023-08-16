### FABRIC INVENTORY ###
switches = {
  ### DC1 Spines - for completeness ###
  dc1-spine1 = {
    name    = "DC1-SPINE1"
    fabric  = "DC1"
  }
  dc1-spine2 = {
    name    = "DC1-SPINE2"
    fabric  = "DC1"
  }
  ### DC1 Anycast Border Gateways ###
  dc1-abgw1 = {
    name    = "DC1-ABGW1"
    fabric  = "DC1"
  }
  dc1-abgw2 = {
    name    = "DC1-ABGW2"
    fabric  = "DC1"
  }
  ### DC1 Compute Leaves ###
  dc1-leaf1 = {
    name    = "DC1-LEAF1"
    fabric  = "DC1"
  }
  dc1-leaf2 = {
    name    = "DC1-LEAF2"
    fabric  = "DC1"
  }
  dc1-leaf3 = {
    name    = "DC1-LEAF3"
    fabric  = "DC1"
  }
  dc1-leaf4 = {
    name    = "DC1-LEAF4"
    fabric  = "DC1"
  }
  ### DC2 VPC Border Gateways ###
  dc2-vbgw1 = {
    name    = "DC2-VBGW1"
    fabric  = "DC2"
  }
  dc2-vbgw2 = {
    name    = "DC2-VBGW2"
    fabric  = "DC2"
  }
}
