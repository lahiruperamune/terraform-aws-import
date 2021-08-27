# aws_ec2_transit_gateway_route_table.NW-TransitGtwy-USWest2-Default:
resource "aws_ec2_transit_gateway_route_table" "NW-TransitGtwy-USWest2-Default" {
    provider                                        = "aws.uswest2"
    # default_association_route_table = true
    # default_propagation_route_table = true
    tags                            = {
        "Name" = "NW-TransitGtwy-USWest2-Default"
    }
    transit_gateway_id              = aws_ec2_transit_gateway.NW-TransitGtwy-USWest2.id
}

# aws_ec2_transit_gateway_route_table.donotuse-vpc-glb-visage-shared-delete:
resource "aws_ec2_transit_gateway_route_table" "donotuse-vpc-glb-visage-shared-delete" {
    # default_association_route_table = true
    # default_propagation_route_table = true
    tags                            = {
        "Name" = "donotuse-vpc-glb-visage-shared-delete"
    }
    transit_gateway_id              = "tgw-0e4ecaffe2aab19c5"
}

# aws_ec2_transit_gateway_route_table.dx-gateway-rt-tbl:
resource "aws_ec2_transit_gateway_route_table" "dx-gateway-rt-tbl" {
    # default_association_route_table = false
    # default_propagation_route_table = false
    tags                            = {
        "Name" = "dx-gateway-rt-tbl"
    }
    transit_gateway_id              = aws_ec2_transit_gateway.NW-TransitGtwy-USWest1.id
}

# aws_ec2_transit_gateway_route_table.peer-NW-TransitGtwy-USWest1-to-USWest2:
resource "aws_ec2_transit_gateway_route_table" "peer-NW-TransitGtwy-USWest1-to-USWest2" {
    # default_association_route_table = false
    # default_propagation_route_table = false
    tags                            = {
        "Name" = "peer-NW-TransitGtwy-USWest1-to-USWest2"
    }
    transit_gateway_id              = aws_ec2_transit_gateway.NW-TransitGtwy-USWest1.id
}

# aws_ec2_transit_gateway_route_table.vpc-TG-Visage-hub:
resource "aws_ec2_transit_gateway_route_table" "vpc-TG-Visage-hub" {
    # default_association_route_table = false
    # default_propagation_route_table = false
    tags                            = {
        "Name" = "vpc-TG-Visage-hub"
    }
    transit_gateway_id              = aws_ec2_transit_gateway.NW-TransitGtwy-USWest1.id
}

# aws_ec2_transit_gateway_route_table.vpc-nw-visage-PROD-spoke:
resource "aws_ec2_transit_gateway_route_table" "vpc-nw-visage-PROD-spoke" {
    # default_association_route_table = false
    # default_propagation_route_table = false
    tags                            = {
        "Name" = "vpc-nw-visage-PROD-spoke"
    }
    transit_gateway_id              = aws_ec2_transit_gateway.NW-TransitGtwy-USWest1.id
}
