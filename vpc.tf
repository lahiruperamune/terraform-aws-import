# aws_vpc.nw-visage-PROD:
resource "aws_vpc" "nw-visage-PROD" {
  # arn                              = "arn:aws:ec2:us-west-1:531502206893:vpc/vpc-07678c5a1ce36aee1"
  assign_generated_ipv6_cidr_block = false
  cidr_block                       = "10.205.190.0/24"
  # default_network_acl_id           = "acl-058e424ec814a8178"
  # default_route_table_id           = "rtb-008044bf22c168bdb"
  # default_security_group_id        = "sg-0ac7b363b81c04bd5"
  # dhcp_options_id                  = "dopt-00d6a3ee10163666a"
  enable_classiclink             = false
  enable_classiclink_dns_support = false
  enable_dns_hostnames           = true
  enable_dns_support             = true
  instance_tenancy               = "default"
  # main_route_table_id              = "rtb-008044bf22c168bdb"
  tags = {
    "Environment" = "hipaa"
    "ManagedBy"   = "Terraform"
    "Name"        = "nw-visage-PROD"
  }
}


# aws_vpc.TG-Visage:
resource "aws_vpc" "TG-Visage" {
  # arn                              = "arn:aws:ec2:us-west-1:531502206893:vpc/vpc-0b4b59748fa405d34"
  assign_generated_ipv6_cidr_block = false
  cidr_block                       = "10.205.176.0/25"
  # default_network_acl_id           = "acl-0a0fc14ad40554f53"
  # default_route_table_id           = "rtb-0132ad72e5b56a8a2"
  # default_security_group_id        = "sg-08cc842d9ec929e97"
  # dhcp_options_id                  = "dopt-002bf08bf1c5da4ad"
  enable_classiclink             = false
  enable_classiclink_dns_support = false
  enable_dns_hostnames           = true
  enable_dns_support             = true
  instance_tenancy               = "default"
  # main_route_table_id              = "rtb-0132ad72e5b56a8a2"
  tags = {
    "Environment" = "hipaa"
    "ManagedBy"   = "Terraform"
    "Name"        = "TG-Visage"
  }
}