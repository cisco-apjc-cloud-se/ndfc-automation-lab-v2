# Build New L3 Networks ##
resource "dcnm_network" "vrf1-net1" {
  fabric_name     = var.dcnm_fabric
  name            = "TERRAFORM-VRF1-NET1"
  network_id      = 30111
  display_name    = "TERRAFORM-VRF1-NET1"
  description     = "VRF#1 Network#1 built by Terraform"
  vrf_name        = dcnm_vrf.vrf-1.name ## Dependency on dcnm_vrf resource
  vlan_id         = 11
  vlan_name       = "TERRAFORM-VRF1-NET1"
  ipv4_gateway    = "192.168.11.1/24"
  # ipv6_gateway    = "2001:db8::1/64"
  # mtu             = 1500
  # secondary_gw_1  = "192.0.3.1/24"
  # secondary_gw_2  = "192.0.3.1/24"
  # arp_supp_flag   = true
  # ir_enable_flag  = true
  # mcast_group     = "239.1.2.2"
  # dhcp_1          = "1.2.3.4"
  # dhcp_2          = "1.2.3.5"
  # dhcp_vrf        = "VRF1012"
  # loopback_id     = 100
  # tag             = 12345
  # rt_both_flag    = true
  # trm_enable_flag = true
  l3_gateway_flag   = true  ## Required for DC2 vBGWs
  # template        = "Default_Network_Universal"
  deploy            = true

  ### Attach Network to DC1 Compute Leaves 1-4 ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF1")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-vrf1-net1-host1.vpc_peer1_id) ## Dependency on dcnm_interface resource
    ]
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF2")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-vrf1-net1-host1.vpc_peer2_id) ## Dependency on dcnm_interface resource
    ]
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF3")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-vrf1-net1-host2.vpc_peer1_id) ## Dependency on dcnm_interface resource
    ]
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF4")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-vrf1-net1-host2.vpc_peer2_id) ## Dependency on dcnm_interface resource
    ]
  }

  ### NOTE: VRF1-NET1 is NOT stretched to DC2 so is not required to be deployed at DC1 BGWs

  # ### Attach Network to DC1 Anycast Border Gateways ###
  # attachments {
  #   serial_number = lookup(local.serial_numbers, "DC1-ABGW1")
  #   attach = true
  # }

  # attachments {
  #   serial_number = lookup(local.serial_numbers, "DC1-ABGW2")
  #   attach = true
  # }

  # ### Attach Network to DC2 vPC Border Gateways ###
  # attachments {
  #   serial_number = lookup(local.serial_numbers, "DC2-VBGW1")
  #   attach = true
  #   switch_ports  = [
  #     format("Port-channel%d", dcnm_interface.vpc-dc2-net1-svr1.vpc_peer1_id) ## Dependency on dcnm_interface resource
  #   ]
  # }

  # attachments {
  #   serial_number = lookup(local.serial_numbers, "DC2-VBGW2")
  #   attach = true
  #   switch_ports  = [
  #     format("Port-channel%d", dcnm_interface.vpc-dc2-net1-svr1.vpc_peer2_id) ## Dependency on dcnm_interface resource
  #   ]
  # }
}

resource "dcnm_network" "vrf1-net2" {
  fabric_name     = var.dcnm_fabric
  name            = "TERRAFORM-VRF1-NET2"
  network_id      = 30112
  display_name    = "TERRAFORM-VRF1-NET2"
  description     = "VRF#1 Network#2 built by Terraform"
  vrf_name        = dcnm_vrf.vrf-1.name ## Dependency on dcnm_vrf resource
  vlan_id         = 12
  vlan_name       = "TERRAFORM-VRF1-NET2"
  ipv4_gateway    = "192.168.12.1/24"
  # ipv6_gateway    = "2001:db8::1/64"
  # mtu             = 1500
  # secondary_gw_1  = "192.0.3.1/24"
  # secondary_gw_2  = "192.0.3.1/24"
  # arp_supp_flag   = true
  # ir_enable_flag  = true
  # mcast_group     = "239.1.2.2"
  # dhcp_1          = "1.2.3.4"
  # dhcp_2          = "1.2.3.5"
  # dhcp_vrf        = "VRF1012"
  # loopback_id     = 100
  # tag             = 12345
  # rt_both_flag    = true
  # trm_enable_flag = true
  l3_gateway_flag   = true  ## Required for DC2 vBGWs
  # template        = "Default_Network_Universal"
  deploy            = true

  ### Attach Network to DC1 Compute Leaves 1-2 ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF1")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-vrf1-net2-host1.vpc_peer1_id) ## Dependency on dcnm_interface resource
    ]
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF2")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-vrf1-net2-host1.vpc_peer2_id) ## Dependency on dcnm_interface resource
    ]
  }

  ### Attach Network to DC1 Anycast Border Gateways ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-ABGW1")
    attach = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-ABGW2")
    attach = true
  }

  ### Attach Network to DC2 vPC Border Gateways ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC2-VBGW1")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-vrf1-net2-host2.vpc_peer1_id) ## Dependency on dcnm_interface resource
    ]
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC2-VBGW2")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-vrf1-net2-host2.vpc_peer2_id) ## Dependency on dcnm_interface resource
    ]
  }
}

resource "dcnm_network" "vrf2-net1" {
  fabric_name     = var.dcnm_fabric
  name            = "TERRAFORM-VRF2-NET1"
  network_id      = 30113
  display_name    = "TERRAFORM-VRF2-NET1"
  description     = "VRF#2 Network#1 built by Terraform"
  vrf_name        = dcnm_vrf.vrf-2.name ## Dependency on dcnm_vrf resource
  vlan_id         = 13
  vlan_name       = "TERRAFORM-VRF2-NET1"
  ipv4_gateway    = "192.168.13.1/24"
  # ipv6_gateway    = "2001:db8::1/64"
  # mtu             = 1500
  # secondary_gw_1  = "192.0.3.1/24"
  # secondary_gw_2  = "192.0.3.1/24"
  # arp_supp_flag   = true
  # ir_enable_flag  = true
  # mcast_group     = "239.1.2.2"
  # dhcp_1          = "1.2.3.4"
  # dhcp_2          = "1.2.3.5"
  # dhcp_vrf        = "VRF1012"
  # loopback_id     = 100
  # tag             = 12345
  # rt_both_flag    = true
  # trm_enable_flag = true
  l3_gateway_flag   = true  ## Required for DC2 vBGWs
  # template        = "Default_Network_Universal"
  deploy            = true

  ### Attach Network to DC1 Compute Leaves 3-4 ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF3")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-vrf2-net1-host1.vpc_peer1_id) ## Dependency on dcnm_interface resource
    ]
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF4")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-vrf2-net1-host1.vpc_peer2_id) ## Dependency on dcnm_interface resource
    ]
  }

  ### Attach Network to DC1 Anycast Border Gateways ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-ABGW1")
    attach = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-ABGW2")
    attach = true
  }

  ### Attach Network to DC2 vPC Border Gateways ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC2-VBGW1")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-vrf2-net1-host2.vpc_peer1_id) ## Dependency on dcnm_interface resource
    ]
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC2-VBGW2")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-vrf2-net1-host2.vpc_peer2_id) ## Dependency on dcnm_interface resource
    ]
  }
}