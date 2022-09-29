## Build New VPC Interfaces ##
resource "dcnm_interface" "vpc-dc1-net1-svr1" {
  policy                  = "int_vpc_trunk_host"
  type                    = "vpc"
  name                    = format("vPC%d1", var.pod_num)
  fabric_name             = var.dcnm_fabric
  switch_name_1           = "DC1-LEAF1"
  switch_name_2           = "DC1-LEAF2"
  vpc_peer1_id            = format("%d1", var.pod_num)
  vpc_peer2_id            = format("%d1", var.pod_num)
  mode                    = "active"
  bpdu_guard_flag         = "true"
  mtu                     = "default"
  vpc_peer1_allowed_vlans = "none"
  vpc_peer2_allowed_vlans = "none"
  vpc_peer1_interface     = [format("E1/%d", (5 + var.pod_num))]  # Expects list
  vpc_peer2_interface     = [format("E1/%d", (5 + var.pod_num))]  # Expects list
  vpc_peer1_desc          = format("VPC %d1 - Peer 1", var.pod_num)
  vpc_peer2_desc          = format("VPC %d1 - Peer 2", var.pod_num)
}

resource "dcnm_interface" "vpc-dc1-net1-svr2" {
  policy                  = "int_vpc_trunk_host"
  type                    = "vpc"
  name                    = format("vPC%d1", var.pod_num)
  fabric_name             = var.dcnm_fabric
  switch_name_1           = "DC1-LEAF3"
  switch_name_2           = "DC1-LEAF4"
  vpc_peer1_id            = format("%d1", var.pod_num)
  vpc_peer2_id            = format("%d1", var.pod_num)
  mode                    = "active"
  bpdu_guard_flag         = "true"
  mtu                     = "default"
  vpc_peer1_allowed_vlans = "none"
  vpc_peer2_allowed_vlans = "none"
  vpc_peer1_interface     = [format("E1/%d", (5 + var.pod_num))]  # Expects list
  vpc_peer2_interface     = [format("E1/%d", (5 + var.pod_num))]  # Expects list
  vpc_peer1_desc          = format("VPC %d1 - Peer 1", var.pod_num)
  vpc_peer2_desc          = format("VPC %d1 - Peer 2", var.pod_num)
}

resource "dcnm_interface" "vpc-dc1-net2-svr1" {
  policy                  = "int_vpc_trunk_host"
  type                    = "vpc"
  name                    = format("vPC%d2", var.pod_num)
  fabric_name             = var.dcnm_fabric
  switch_name_1           = "DC1-LEAF5"
  switch_name_2           = "DC1-LEAF6"
  vpc_peer1_id            = format("%d2", var.pod_num)
  vpc_peer2_id            = format("%d2", var.pod_num)
  mode                    = "active"
  bpdu_guard_flag         = "true"
  mtu                     = "default"
  vpc_peer1_allowed_vlans = "none"
  vpc_peer2_allowed_vlans = "none"
  vpc_peer1_interface     = [format("E1/%d", (5 + var.pod_num))]  # Expects list
  vpc_peer2_interface     = [format("E1/%d", (5 + var.pod_num))]  # Expects list
  vpc_peer1_desc          = format("VPC %d2 - Peer 1", var.pod_num)
  vpc_peer2_desc          = format("VPC %d2 - Peer 2", var.pod_num)
}

resource "dcnm_interface" "vpc-dc2-net1-svr1" {
  policy                  = "int_vpc_trunk_host"
  type                    = "vpc"
  name                    = format("vPC%d3", var.pod_num)
  fabric_name             = var.dcnm_fabric
  switch_name_1           = "DC2-VBGW1"
  switch_name_2           = "DC2-VBGW2"
  vpc_peer1_id            = format("%d3", var.pod_num)
  vpc_peer2_id            = format("%d3", var.pod_num)
  mode                    = "active"
  bpdu_guard_flag         = "true"
  mtu                     = "default"
  vpc_peer1_allowed_vlans = "none"
  vpc_peer2_allowed_vlans = "none"
  vpc_peer1_interface     = [format("E1/%d", (5 + var.pod_num))]  # Expects list
  vpc_peer2_interface     = [format("E1/%d", (5 + var.pod_num))]  # Expects list
  vpc_peer1_desc          = format("VPC %d3 - Peer 1", var.pod_num)
  vpc_peer2_desc          = format("VPC %d3 - Peer 2", var.pod_num)
}
