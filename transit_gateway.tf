# aws_ec2_transit_gateway.NW-TransitGtwy-USWest1:
resource "aws_ec2_transit_gateway" "NW-TransitGtwy-USWest1" {
  amazon_side_asn                 = 64512
  description                     = "HSIS-TransitGtwy"
  auto_accept_shared_attachments  = "disable"
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"
  dns_support                     = "enable"
  tags = {
    "Name" = "NW-TransitGtwy-USWest1"
  }
  vpn_ecmp_support = "enable"
}

# aws_ec2_transit_gateway.NW-TransitGtwy-USWest2:
resource "aws_ec2_transit_gateway" "NW-TransitGtwy-USWest2" {
  amazon_side_asn = 64513
  provider                                        = "aws.uswest2"
  #    association_default_route_table_id = "tgw-rtb-09dfd127e0e7c2f2f"
  auto_accept_shared_attachments  = "disable"
  default_route_table_association = "enable"
  default_route_table_propagation = "enable"
  description                     = "Transit Gateway us-west-2"
  dns_support                     = "enable"
  #    propagation_default_route_table_id = "tgw-rtb-09dfd127e0e7c2f2f"
  tags = {
    "Name" = "NW-TransitGtwy-USWest2"
  }
  vpn_ecmp_support = "enable"
}
