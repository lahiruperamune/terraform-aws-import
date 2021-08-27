# aws_ec2_transit_gateway_vpc_attachment.Shared-VPC-HSIS-MGMT:
resource "aws_ec2_transit_gateway_vpc_attachment" "Shared-VPC-HSIS-MGMT" {
    dns_support                                     = "enable"
    provider                                        = "aws.uswest2"
    ipv6_support                                    = "disable"
    subnet_ids                                      = [
        "subnet-069293dbd2bca6679",
        "subnet-08a1a4dc3e6cb9b60",
    ]
    tags                                            = {
        "Name" = "Shared-VPC-HSIS-MGMT"
    }
    transit_gateway_default_route_table_association = true
    transit_gateway_default_route_table_propagation = true
    transit_gateway_id                              = aws_ec2_transit_gateway.NW-TransitGtwy-USWest2.id
    vpc_id                                          = "vpc-d084bab7"
}

# aws_ec2_transit_gateway_vpc_attachment.VPC-TG-Research:
resource "aws_ec2_transit_gateway_vpc_attachment" "VPC-TG-Research" {
    dns_support                                     = "enable"
    ipv6_support                                    = "disable"
    subnet_ids                                      = [
        "subnet-007f177292c5b51bd",
        "subnet-0c6accc2263409096",
    ]
    tags                                            = {
        "Name" = "VPC-TG-Research"
    }
    transit_gateway_default_route_table_association = false
    transit_gateway_default_route_table_propagation = false
    transit_gateway_id                              = aws_ec2_transit_gateway.NW-TransitGtwy-USWest1.id
    vpc_id                                          = "vpc-04b1874ce84387dec"
}

# aws_ec2_transit_gateway_vpc_attachment.VPC-TG-visage:
resource "aws_ec2_transit_gateway_vpc_attachment" "VPC-TG-visage" {
    dns_support                                     = "enable"
    ipv6_support                                    = "disable"
    subnet_ids                                      = [
        aws_subnet.TG-Visage-TGW-Pvt-1C.id,
        aws_subnet.TG-Visage-TGW-Pvt-1A.id,
    ]
    tags                                            = {
        "Name" = "VPC-TG-visage"
    }
    transit_gateway_default_route_table_association = false
    transit_gateway_default_route_table_propagation = false
    transit_gateway_id                              = aws_ec2_transit_gateway.NW-TransitGtwy-USWest1.id
    vpc_id                                          = aws_vpc.TG-Visage.id
}

# aws_ec2_transit_gateway_vpc_attachment.VPC-nw-visage-PROD:
resource "aws_ec2_transit_gateway_vpc_attachment" "VPC-nw-visage-PROD" {
    dns_support                                     = "enable"
    ipv6_support                                    = "disable"
    subnet_ids                                      = [
        aws_subnet.nw-visage-PROD-PVT-1C.id,
        aws_subnet.nw-visage-PROD-PVT-1A.id,
    ]
    tags                                            = {
        "Name" = "VPC-nw-visage-PROD"
    }
    transit_gateway_default_route_table_association = false
    transit_gateway_default_route_table_propagation = false
    transit_gateway_id                              = aws_ec2_transit_gateway.NW-TransitGtwy-USWest1.id
    vpc_id                                          = aws_vpc.nw-visage-PROD.id
}

# aws_ec2_transit_gateway_peering_attachment.Peer-NW-TransitGtwy-uswest1-uswest2:
resource "aws_ec2_transit_gateway_peering_attachment" "Peer-NW-TransitGtwy-uswest1-uswest2" {
    peer_account_id         = "531502206893"
    peer_region             = "us-west-1"
    peer_transit_gateway_id = aws_ec2_transit_gateway.NW-TransitGtwy-USWest1.id
    tags                    = {
        "Name" = "Peer-NW-TransitGtwy-uswest1-uswest2"
    }
    transit_gateway_id      = aws_ec2_transit_gateway.NW-TransitGtwy-USWest2.id
}