## Build New VRFs ###
resource "dcnm_vrf" "vrf-1" {
  fabric_name             = var.dcnm_fabric
  name                    = "TERRAFORM-VRF1"
  vlan_id                 = 111
  segment_id              = 50111
  vlan_name               = "TERRAFORM-VRF1"
  description             = "VRF #1 built by Terraform"
  intf_description        = "TERRAFORM-VRF1"
  # max_bgp_path           = 2
  # max_ibgp_path          = 2
  advertise_host_route    = true
  advertise_default_route = true
  static_default_route    = false
  deploy                  = true

  ### Attach VRF to DC1 Compute Leaves ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF-1")
    vlan_id       = 111
    attach        = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF-2")
    vlan_id       = 111
    attach        = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF-3")
    vlan_id       = 111
    attach        = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF-4")
    vlan_id       = 111
    attach        = true
  }

  # attachments {
  #   serial_number = lookup(local.serial_numbers, "DC1-LEAF-5")
  #   vlan_id = 111
  #   attach = true
  # }

  # attachments {
  #   serial_number = lookup(local.serial_numbers, "DC1-LEAF-6")
  #   vlan_id = 111
  #   attach = true
  # }

  ### Attach VRF to DC1 Anycast Border Gateways ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-ABGW-1")
    vlan_id       = 111
    attach        = true
    # vrf_lite {
    #   auto_vrf_lite_flag = false
    #   peer_vrf_name = "global"
    #   interface_name = "Ethernet1/5"
    #   dot1q_id = 11
    #   neighbor_ip = "192.168.254.254"
    #   neighbor_asn = 65010
    #   ip_mask = "192.168.254.253/30"
    #   ipv6_mask = null
    #   ipv6_neighbor = null
    # }
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-ABGW-2")
    vlan_id       = 111
    attach        = true
    # vrf_lite {
    #   auto_vrf_lite_flag = false
    #   peer_vrf_name = "global"
    #   interface_name = "Ethernet1/5"
    #   dot1q_id = 11
    #   neighbor_ip = "192.168.254.250"
    #   neighbor_asn = 65010
    #   ip_mask = "192.168.254.249/30"
    #   ipv6_mask = null
    #   ipv6_neighbor = null
    # }
  }

  ### Attach VRF to DC2 vPC Border Gateways ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC2-VBGW-1")
    vlan_id = 111
    attach = true
    # vrf_lite {
    #   auto_vrf_lite_flag = false
    #   peer_vrf_name = "global"
    #   interface_name = "Ethernet1/5"
    #   dot1q_id = 11
    #   neighbor_ip = "192.168.254.246"
    #   neighbor_asn = 65010
    #   ip_mask = "192.168.254.245/30"
    #   ipv6_mask = null
    #   ipv6_neighbor = null
    # }
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC2-VBGW-2")
    vlan_id = 111
    attach = true
    # vrf_lite {
    #   auto_vrf_lite_flag = false
    #   peer_vrf_name = "global"
    #   interface_name = "Ethernet1/5"
    #   dot1q_id = 11
    #   neighbor_ip = "192.168.254.242"
    #   neighbor_asn = 65010
    #   ip_mask = "192.168.254.241/30"
    #   ipv6_mask = null
    #   ipv6_neighbor = null
    # }
  }

}

resource "dcnm_vrf" "vrf-2" {
  fabric_name             = var.dcnm_fabric
  name                    = "TERRAFORM-VRF2"
  vlan_id                 = 112
  segment_id              = 50112
  vlan_name               = "TERRAFORM-VRF2"
  description             = "VRF #2 built by Terraform"
  intf_description        = "TERRAFORM-VRF2"
  # max_bgp_path           = 2
  # max_ibgp_path          = 2
  advertise_host_route    = true
  advertise_default_route = true
  static_default_route    = false
  deploy                  = true

  ### Attach VRF to DC1 Compute Leaves ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF-3")
    vlan_id       = 112
    attach        = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF-4")
    vlan_id       = 112
    attach        = true
  }

  # attachments {
  #   serial_number = lookup(local.serial_numbers, "DC1-LEAF-5")
  #   vlan_id = 112
  #   attach = true
  # }

  # attachments {
  #   serial_number = lookup(local.serial_numbers, "DC1-LEAF-6")
  #   vlan_id = 112
  #   attach = true
  # }

  ### Attach VRF to DC1 Anycast Border Gateways ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-ABGW-1")
    vlan_id       = 112
    attach        = true
    # vrf_lite {
    #   auto_vrf_lite_flag = false
    #   peer_vrf_name = "global"
    #   interface_name = "Ethernet1/5"
    #   dot1q_id = 12
    #   neighbor_ip = "192.168.253.254"
    #   neighbor_asn = 65010
    #   ip_mask = "192.168.253.253/30"
    #   ipv6_mask = null
    #   ipv6_neighbor = null
    # }
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-ABGW-2")
    vlan_id       = 112
    attach        = true
    # vrf_lite {
    #   auto_vrf_lite_flag = false
    #   peer_vrf_name = "global"
    #   interface_name = "Ethernet1/5"
    #   dot1q_id = 12
    #   neighbor_ip = "192.168.253.250"
    #   neighbor_asn = 65010
    #   ip_mask = "192.168.253.249/30"
    #   ipv6_mask = null
    #   ipv6_neighbor = null
    # }
  }

  ### Attach VRF to DC2 vPC Border Gateways ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC2-VBGW-1")
    vlan_id = 112
    attach = true
    # vrf_lite {
    #   auto_vrf_lite_flag = false
    #   peer_vrf_name = "global"
    #   interface_name = "Ethernet1/5"
    #   dot1q_id = 12
    #   neighbor_ip = "192.168.253.246"
    #   neighbor_asn = 65010
    #   ip_mask = "192.168.253.245/30"
    #   ipv6_mask = null
    #   ipv6_neighbor = null
    # }
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC2-VBGW-2")
    vlan_id = 112
    attach = true
    # vrf_lite {
    #   auto_vrf_lite_flag = false
    #   peer_vrf_name = "global"
    #   interface_name = "Ethernet1/5"
    #   dot1q_id = 12
    #   neighbor_ip = "192.168.253.242"
    #   neighbor_asn = 65010
    #   ip_mask = "192.168.253.241/30"
    #   ipv6_mask = null
    #   ipv6_neighbor = null
    # }
  }

}