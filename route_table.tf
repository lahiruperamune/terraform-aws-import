# aws_route_table.TG-Visage-Default-doNotUse:
resource "aws_route_table" "TG-Visage-Default-doNotUse" {
  tags = {
    "Name" = "TG-Visage-Default-doNotUse"
  }
  vpc_id = aws_vpc.TG-Visage.id
}

# aws_route_table.Transit-Gtwy-PA-Out-Mgmt-Pub:
resource "aws_route_table" "Transit-Gtwy-PA-Out-Mgmt-Pub" {
  route = [
    {
      carrier_gateway_id         = ""
      cidr_block                 = "0.0.0.0/0"
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      nat_gateway_id             = ""
      network_interface_id       = ""
      transit_gateway_id         = aws_ec2_transit_gateway.NW-TransitGtwy-USWest1.id
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
    {
      carrier_gateway_id         = ""
      cidr_block                 = "10.205.190.0/24"
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = "i-0d561dff7035ab2d0"
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      nat_gateway_id             = ""
      network_interface_id       = "eni-050bb1716bf9cca24"
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    "Environment" = "hipaa"
    "ManagedBy"   = "Terraform"
    "Name"        = "Transit-Gtwy-PA-Out-Mgmt-Pub"
  }
  vpc_id = aws_vpc.TG-Visage.id
}

# aws_route_table.Transit-Gtwy-TGW-Pvt-PA-IN:
resource "aws_route_table" "Transit-Gtwy-TGW-Pvt-PA-IN" {
  route = [
    {
      carrier_gateway_id         = ""
      cidr_block                 = "0.0.0.0/0"
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = "i-0d561dff7035ab2d0"
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      nat_gateway_id             = ""
      network_interface_id       = "eni-050c95a67cca82aff"
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
    {
      carrier_gateway_id         = ""
      cidr_block                 = "10.192.0.0/12"
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = "i-0d561dff7035ab2d0"
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      nat_gateway_id             = ""
      network_interface_id       = "eni-050c95a67cca82aff"
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
    {
      carrier_gateway_id         = ""
      cidr_block                 = "10.205.190.0/24"
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = "i-0d561dff7035ab2d0"
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      nat_gateway_id             = ""
      network_interface_id       = "eni-050bb1716bf9cca24"
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    "Environment" = "hipaa"
    "ManagedBy"   = "Terraform"
    "Name"        = "Transit-Gtwy-TGW-Pvt-PA-IN"
  }
  vpc_id = aws_vpc.TG-Visage.id
}

# aws_route_table.Transit-Gtwy-TGW-trust-pvt-out:
resource "aws_route_table" "Transit-Gtwy-TGW-trust-pvt-out" {
  route = [
    {
      carrier_gateway_id         = ""
      cidr_block                 = "10.205.128.0/17"
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      nat_gateway_id             = ""
      network_interface_id       = ""
      transit_gateway_id         = aws_ec2_transit_gateway.NW-TransitGtwy-USWest1.id
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    "Environment" = "hipaa"
    "ManagedBy"   = "Terraform"
    "Name"        = "Transit-Gtwy-TGW-trust-pvt-out"
  }
  vpc_id = aws_vpc.TG-Visage.id
}

# aws_route_table.nw-visage-PROD-PUB:
resource "aws_route_table" "nw-visage-PROD-PUB" {
  route = [
    {
      carrier_gateway_id         = ""
      cidr_block                 = "0.0.0.0/0"
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = "igw-0aec4cec1d9a8a57e"
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      nat_gateway_id             = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
    {
      carrier_gateway_id         = ""
      cidr_block                 = "10.192.0.0/12"
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      nat_gateway_id             = ""
      network_interface_id       = ""
      transit_gateway_id         = aws_ec2_transit_gateway.NW-TransitGtwy-USWest1.id
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    "Environment" = "hipaa"
    "ManagedBy"   = "Terraform"
    "Name"        = "nw-visage-PROD-PUB"
  }
  vpc_id = aws_vpc.nw-visage-PROD.id
}

# aws_route_table.nw-visage-PROD-PVT:
resource "aws_route_table" "nw-visage-PROD-PVT" {
  route = [
    {
      carrier_gateway_id         = ""
      cidr_block                 = "0.0.0.0/0"
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      nat_gateway_id             = ""
      network_interface_id       = ""
      transit_gateway_id         = aws_ec2_transit_gateway.NW-TransitGtwy-USWest1.id
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    "Environment" = "hipaa"
    "ManagedBy"   = "Terraform"
    "Name"        = "nw-visage-PROD-PVT"
  }
  vpc_id = aws_vpc.nw-visage-PROD.id
}

# aws_route_table.nw-visage-PROD-Default-DoNotUse:
resource "aws_route_table" "nw-visage-PROD-Default-DoNotUse" {
  tags = {
    "Name" = "nw-visage-PROD-Default-DoNotUse"
  }
  vpc_id = aws_vpc.nw-visage-PROD.id
}