# aws_dx_gateway.ucsdh-SV5-dx-10G-dx-gtwy:
resource "aws_dx_gateway" "ucsdh-SV5-dx-10G-dx-gtwy" {       
    amazon_side_asn  = "64514"
    name             = "ucsdh-SV5-dx-10G-dx-gtwy"
    timeouts {}
}

# aws_dx_hosted_transit_virtual_interface.ucsdh-SV5-dx-10G-vif:
resource "aws_dx_hosted_transit_virtual_interface" "ucsdh-SV5-dx-10G-vif" {
    address_family      = "ipv4"
    amazon_address      = "169.254.253.1/30"
#    amazon_side_asn     = "64514"
#    aws_device          = "EqSV5-2dpw08oxy2iit"
    bgp_asn             = 65000
    bgp_auth_key        = "0xEkUCGqFPiHBXiioqHw_s3."
    connection_id       = "dxcon-fg8fuffc"
    customer_address    = "169.254.253.2/30"
#    jumbo_frame_capable = true
    mtu                 = 8500
    name                = "ucsdh-SV5-dx-10G-vif"
    owner_account_id    = "531502206893"
    vlan                = 3661

    timeouts {}
}
