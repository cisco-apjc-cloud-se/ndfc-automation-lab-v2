# Build New L3 Networks ##
resource "dcnm_network" "net-1" {
  fabric_name     = var.dcnm_fabric
  name            = format("POD%d-TERRAFORM-NET1", var.pod_num)
  network_id      = format("301%d1", var.pod_num)
  display_name    = format("POD%d-TERRAFORM-NET1", var.pod_num)
  description     = format("POD%d Network #1 built by Terraform", var.pod_num)
  vrf_name        = dcnm_vrf.vrf-1.name ## Dependency on dcnm_vrf resource
  vlan_id         = format("%d1", var.pod_num)
  vlan_name       = format("POD%d-TERRAFORM-NET1", var.pod_num)
  ipv4_gateway    = format("10.1.%d1.1/24", var.pod_num)
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
      format("Port-channel%d", dcnm_interface.vpc-dc1-net1-svr1.vpc_peer1_id) ## Dependency on dcnm_interface resource
    ]
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF2")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-dc1-net1-svr1.vpc_peer2_id) ## Dependency on dcnm_interface resource
    ]
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF3")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-dc1-net1-svr2.vpc_peer1_id) ## Dependency on dcnm_interface resource
    ]
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF4")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-dc1-net1-svr2.vpc_peer2_id) ## Dependency on dcnm_interface resource
    ]
  }

  ### Attach VRF to DC1 Anycast Border Gateways ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-ABGW1")
    attach = true
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-ABGW2")
    attach = true
  }

  ### Attach VRF to DC2 vPC Border Gateways ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC2-VBGW1")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-dc2-net1-svr1.vpc_peer1_id) ## Dependency on dcnm_interface resource
    ]
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC2-VBGW2")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-dc2-net1-svr1.vpc_peer2_id) ## Dependency on dcnm_interface resource
    ]
  }

  # depends_on = [dcnm_vrf.vrfs, dcnm_interface.vpc]
}

resource "dcnm_network" "net-2" {
  fabric_name     = var.dcnm_fabric
  name            = format("POD%d-TERRAFORM-NET2", var.pod_num)
  network_id      = format("301%d2", var.pod_num)
  display_name    = format("POD%d-TERRAFORM-NET2", var.pod_num)
  description     = format("POD%d Network #2 built by Terraform", var.pod_num)
  vrf_name        = dcnm_vrf.vrf-1.name ## Dependency on dcnm_vrf resource
  vlan_id         = format("%d2", var.pod_num)
  vlan_name       = format("POD%d-TERRAFORM-NET2", var.pod_num)
  ipv4_gateway    = format("10.1.%d2.1/24", var.pod_num)
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

  ### Attach Network to DC1 Compute Leaves 5-6 ###
  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF5")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-dc1-net2-svr1.vpc_peer1_id) ## Dependency on dcnm_interface resource
    ]
  }

  attachments {
    serial_number = lookup(local.serial_numbers, "DC1-LEAF6")
    attach = true
    switch_ports  = [
      format("Port-channel%d", dcnm_interface.vpc-dc1-net2-svr1.vpc_peer2_id) ## Dependency on dcnm_interface resource
    ]
  }

  # depends_on = [dcnm_vrf.vrfs, dcnm_interface.vpc]
}
