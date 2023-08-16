## Build New VPC Interfaces ##
resource "dcnm_interface" "vpc-vrf1-net1-host1" {
  policy                  = "int_vpc_trunk_host"
  type                    = "vpc"
  name                    = "vPC11"
  fabric_name             = var.dcnm_fabric
  switch_name_1           = "DC1-LEAF1"
  switch_name_2           = "DC1-LEAF2"
  vpc_peer1_id            = 11
  vpc_peer2_id            = 11
  mode                    = "active"
  bpdu_guard_flag         = "true"
  mtu                     = "default"
  vpc_peer1_allowed_vlans = "none"
  vpc_peer2_allowed_vlans = "none"
  vpc_peer1_interface     = ["E1/7"]  # Expects list
  vpc_peer2_interface     = ["E1/7"]  # Expects list
  vpc_peer1_desc          = "VPC11 - VRF1-NET1-HOST1 - Peer 1"
  vpc_peer2_desc          = "VPC11 - VRF1-NET1-HOST1 - Peer 2"
}

resource "dcnm_interface" "vpc-vrf1-net2-host1" {
  policy                  = "int_vpc_trunk_host"
  type                    = "vpc"
  name                    = "vPC12"
  fabric_name             = var.dcnm_fabric
  switch_name_1           = "DC1-LEAF1"
  switch_name_2           = "DC1-LEAF2"
  vpc_peer1_id            = 12
  vpc_peer2_id            = 12
  mode                    = "active"
  bpdu_guard_flag         = "true"
  mtu                     = "default"
  vpc_peer1_allowed_vlans = "none"
  vpc_peer2_allowed_vlans = "none"
  vpc_peer1_interface     = ["E1/8"]  # Expects list
  vpc_peer2_interface     = ["E1/8"]  # Expects list
  vpc_peer1_desc          = "VPC12 - VRF1-NET2-HOST1 - Peer 1"
  vpc_peer2_desc          = "VPC12 - VRF1-NET2-HOST1 - Peer 2"
}

resource "dcnm_interface" "vpc-vrf1-net1-host2" {
  policy                  = "int_vpc_trunk_host"
  type                    = "vpc"
  name                    = "vPC11"
  fabric_name             = var.dcnm_fabric
  switch_name_1           = "DC1-LEAF3"
  switch_name_2           = "DC1-LEAF4"
  vpc_peer1_id            = 11
  vpc_peer2_id            = 11
  mode                    = "active"
  bpdu_guard_flag         = "true"
  mtu                     = "default"
  vpc_peer1_allowed_vlans = "none"
  vpc_peer2_allowed_vlans = "none"
  vpc_peer1_interface     = ["E1/7"]  # Expects list
  vpc_peer2_interface     = ["E1/7"]  # Expects list
  vpc_peer1_desc          = "VPC11 - VRF1-NET1-HOST2 - Peer 1"
  vpc_peer2_desc          = "VPC11 - VRF1-NET1-HOST2 - Peer 2"
}

resource "dcnm_interface" "vpc-vrf2-net1-host1" {
  policy                  = "int_vpc_trunk_host"
  type                    = "vpc"
  name                    = "vPC13"
  fabric_name             = var.dcnm_fabric
  switch_name_1           = "DC1-LEAF3"
  switch_name_2           = "DC1-LEAF4"
  vpc_peer1_id            = 13
  vpc_peer2_id            = 13
  mode                    = "active"
  bpdu_guard_flag         = "true"
  mtu                     = "default"
  vpc_peer1_allowed_vlans = "none"
  vpc_peer2_allowed_vlans = "none"
  vpc_peer1_interface     = ["E1/8"]  # Expects list
  vpc_peer2_interface     = ["E1/8"]  # Expects list
  vpc_peer1_desc          = "VPC13 - VRF2-NET1-HOST1 - Peer 1"
  vpc_peer2_desc          = "VPC13 - VRF2-NET1-HOST1 - Peer 2"
}

resource "dcnm_interface" "vpc-vrf1-net2-host2" {
  policy                  = "int_vpc_trunk_host"
  type                    = "vpc"
  name                    = "vPC12"
  fabric_name             = var.dcnm_fabric
  switch_name_1           = "DC2-VBGW1"
  switch_name_2           = "DC2-VBGW2"
  vpc_peer1_id            = 12
  vpc_peer2_id            = 12
  mode                    = "active"
  bpdu_guard_flag         = "true"
  mtu                     = "default"
  vpc_peer1_allowed_vlans = "none"
  vpc_peer2_allowed_vlans = "none"
  vpc_peer1_interface     = ["E1/7"]  # Expects list
  vpc_peer2_interface     = ["E1/7"]  # Expects list
  vpc_peer1_desc          = "VPC12 - VRF1-NET2-HOST2 - Peer 1"
  vpc_peer2_desc          = "VPC12 - VRF1-NET2-HOST2 - Peer 2"
}

resource "dcnm_interface" "vpc-vrf2-net1-host2" {
  policy                  = "int_vpc_trunk_host"
  type                    = "vpc"
  name                    = "vPC13"
  fabric_name             = var.dcnm_fabric
  switch_name_1           = "DC2-VBGW1"
  switch_name_2           = "DC2-VBGW2"
  vpc_peer1_id            = 13
  vpc_peer2_id            = 13
  mode                    = "active"
  bpdu_guard_flag         = "true"
  mtu                     = "default"
  vpc_peer1_allowed_vlans = "none"
  vpc_peer2_allowed_vlans = "none"
  vpc_peer1_interface     = ["E1/8"]  # Expects list
  vpc_peer2_interface     = ["E1/8"]  # Expects list
  vpc_peer1_desc          = "VPC13 - VRF2-NET1-HOST2 - Peer 1"
  vpc_peer2_desc          = "VPC13 - VRF2-NET1-HOST2 - Peer 2"
}