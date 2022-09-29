## Build New VRFs ###
resource "dcnm_vrf" "vrf-1" {
  fabric_name             = var.dcnm_fabric
  name                    = format("POD%d-TERRAFORM-VRF1", var.pod_num)
  vlan_id                 = format("1%d0", var.pod_num)
  segment_id              = format("501%d0", var.pod_num)
  vlan_name               = format("POD%d-TERRAFORM-VRF1", var.pod_num)
  description             = format("POD%d VRF #1 built by Terraform", var.pod_num)
  intf_description        = format("POD%d-TERRAFORM-VRF1", var.pod_num)
  # max_bgp_path           = 2
  # max_ibgp_path          = 2
  advertise_host_route    = true
  advertise_default_route = true
  static_default_route    = false
  deploy                  = true

  ### Attach VRF to DC1 Compute Leaves ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF1")
    vlan_id = format("1%d0", var.pod_num)
    attach = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF2")
    vlan_id = format("1%d0", var.pod_num)
    attach = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF3")
    vlan_id = format("1%d0", var.pod_num)
    attach = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF4")
    vlan_id = format("1%d0", var.pod_num)
    attach = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF5")
    vlan_id = format("1%d0", var.pod_num)
    attach = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF6")
    vlan_id = format("1%d0", var.pod_num)
    attach = true
  }

  ### Attach VRF to DC1 Anycast Border Gateways ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-ABGW1")
    vlan_id = format("1%d0", var.pod_num)
    attach = true
    # vrf_lite {
    #   auto_vrf_lite_flag = false
    #   peer_vrf_name = "global"
    #   interface_name = "Ethernet1/5"
    #   dot1q_id = format("%d1", var.pod_num)
    #   neighbor_ip = format("10.255.10%d.2", var.pod_num)
    #   neighbor_asn = 65010
    #   ip_mask = format("10.255.10%d.1/30", var.pod_num)
    #   ipv6_mask = null
    #   ipv6_neighbor = null
    # }
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-ABGW2")
    vlan_id = format("1%d0", var.pod_num)
    attach = true
    # vrf_lite {
    #   auto_vrf_lite_flag = false
    #   peer_vrf_name = "global"
    #   interface_name = "Ethernet1/5"
    #   dot1q_id = format("%d1", var.pod_num)
    #   neighbor_ip = format("10.255.10%d.6", var.pod_num)
    #   neighbor_asn = 65010
    #   ip_mask = format("10.255.10%d.5/30", var.pod_num)
    #   ipv6_mask = null
    #   ipv6_neighbor = null
    # }
  }

  ### Attach VRF to DC2 vPC Border Gateways ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC2-VBGW1")
    vlan_id = format("1%d0", var.pod_num)
    attach = true
    # vrf_lite {
    #   auto_vrf_lite_flag = false
    #   peer_vrf_name = "global"
    #   interface_name = "Ethernet1/5"
    #   dot1q_id = format("%d1", var.pod_num)
    #   neighbor_ip = format("10.255.10%d.10", var.pod_num)
    #   neighbor_asn = 65010
    #   ip_mask = format("10.255.10%d.9/30", var.pod_num)
    #   ipv6_mask = null
    #   ipv6_neighbor = null
    # }
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC2-VBGW2")
    vlan_id = format("1%d0", var.pod_num)
    attach = true
    # vrf_lite {
    #   auto_vrf_lite_flag = false
    #   peer_vrf_name = "global"
    #   interface_name = "Ethernet1/5"
    #   dot1q_id = format("%d1", var.pod_num)
    #   neighbor_ip = format("10.255.10%d.14", var.pod_num)
    #   neighbor_asn = 65010
    #   ip_mask = format("10.255.10%d.13/30", var.pod_num)
    #   ipv6_mask = null
    #   ipv6_neighbor = null
    # }
  }

}

resource "dcnm_vrf" "vrf-2" {
  fabric_name             = var.dcnm_fabric
  name                    = format("POD%d-TERRAFORM-VRF2", var.pod_num)
  vlan_id                 = format("1%d1", var.pod_num)
  segment_id              = format("501%d1", var.pod_num)
  vlan_name               = format("POD%d-TERRAFORM-VRF2", var.pod_num)
  description             = format("POD%d VRF #2 built by Terraform", var.pod_num)
  intf_description        = format("POD%d-TERRAFORM-VRF2", var.pod_num)
  # max_bgp_path           = 2
  # max_ibgp_path          = 2
  advertise_host_route    = true
  advertise_default_route = true
  static_default_route    = false
  deploy                  = true

  ### Attach VRF to DC1 Compute Leaves ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF1")
    vlan_id = format("1%d1", var.pod_num)
    attach = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF2")
    vlan_id = format("1%d1", var.pod_num)
    attach = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF3")
    vlan_id = format("1%d1", var.pod_num)
    attach = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF4")
    vlan_id = format("1%d1", var.pod_num)
    attach = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF5")
    vlan_id = format("1%d1", var.pod_num)
    attach = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF6")
    vlan_id = format("1%d1", var.pod_num)
    attach = true
  }

  ### Attach VRF to DC1 Anycast Border Gateways ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-ABGW1")
    vlan_id = format("1%d1", var.pod_num)
    attach = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-ABGW2")
    vlan_id = format("1%d1", var.pod_num)
    attach = true
  }

  ### Attach VRF to DC2 vPC Border Gateways ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC2-VBGW1")
    vlan_id = format("1%d1", var.pod_num)
    attach = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC2-VBGW2")
    vlan_id = format("1%d1", var.pod_num)
    attach = true
  }

}
