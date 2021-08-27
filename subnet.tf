# aws_subnet.TG-Visage-Mgmt-Pub-1C:
resource "aws_subnet" "TG-Visage-Mgmt-Pub-1C" {
  assign_ipv6_address_on_creation = false
  availability_zone               = "us-west-1c"
  cidr_block                      = "10.205.176.64/28"
  tags = {
    "Environment" = "hipaa"
    "ManagedBy"   = "Terraform"
    "Name"        = "TG-Visage-Mgmt-Pub-1C"
  }
  vpc_id = aws_vpc.TG-Visage.id
  timeouts {}
}

# aws_subnet.TG-Visage-TGW-Pvt-1C:
resource "aws_subnet" "TG-Visage-TGW-Pvt-1C" {
  assign_ipv6_address_on_creation = false
  availability_zone               = "us-west-1c"
  cidr_block                      = "10.205.176.112/28"
  tags = {
    "Environment" = "hipaa"
    "ManagedBy"   = "Terraform"
    "Name"        = "TG-Visage-TGW-Pvt-1C"
  }
  vpc_id = aws_vpc.TG-Visage.id
  timeouts {}
}

# aws_subnet.TG-Visage-TGW-Pvt-1A:
resource "aws_subnet" "TG-Visage-TGW-Pvt-1A" {
  assign_ipv6_address_on_creation = false
  availability_zone               = "us-west-1a"
  cidr_block                      = "10.205.176.48/28"
  tags = {
    "Environment" = "hipaa"
    "ManagedBy"   = "Terraform"
    "Name"        = "TG-Visage-TGW-Pvt-1A"
  }
  vpc_id = aws_vpc.TG-Visage.id
  timeouts {}
}

# aws_subnet.TG-Visage-Trust-Pvt-1A:
resource "aws_subnet" "TG-Visage-Trust-Pvt-1A" {
  assign_ipv6_address_on_creation = false
  availability_zone               = "us-west-1a"
  cidr_block                      = "10.205.176.32/28"
  tags = {
    "Environment" = "hipaa"
    "ManagedBy"   = "Terraform"
    "Name"        = "TG-Visage-Trust-Pvt-1A"
  }
  vpc_id = aws_vpc.TG-Visage.id
  timeouts {}
}

# aws_subnet.TG-Visage-Trust-Pvt-1C:
resource "aws_subnet" "TG-Visage-Trust-Pvt-1C" {
  assign_ipv6_address_on_creation = false
  availability_zone               = "us-west-1c"
  cidr_block                      = "10.205.176.96/28"
  tags = {
    "Environment" = "hipaa"
    "ManagedBy"   = "Terraform"
    "Name"        = "TG-Visage-Trust-Pvt-1C"
  }
  vpc_id = aws_vpc.TG-Visage.id
  timeouts {}
}

# aws_subnet.TG-Visage-Untrust-Pub-1A:
resource "aws_subnet" "TG-Visage-Untrust-Pub-1A" {
  assign_ipv6_address_on_creation = false
  availability_zone               = "us-west-1a"
  cidr_block                      = "10.205.176.16/28"
  tags = {
    "Environment" = "hipaa"
    "ManagedBy"   = "Terraform"
    "Name"        = "TG-Visage-Untrust-Pub-1A"
  }
  vpc_id = aws_vpc.TG-Visage.id
  timeouts {}
}

# aws_subnet.TG-Visage-Untrust-Pub-1C:
resource "aws_subnet" "TG-Visage-Untrust-Pub-1C" {
  assign_ipv6_address_on_creation = false
  availability_zone               = "us-west-1c"
  cidr_block                      = "10.205.176.80/28"
  tags = {
    "Environment" = "hipaa"
    "ManagedBy"   = "Terraform"
    "Name"        = "TG-Visage-Untrust-Pub-1C"
  }
  vpc_id = aws_vpc.TG-Visage.id
  timeouts {}
}

# aws_subnet.nw-visage-PROD-PUB-1A:
resource "aws_subnet" "nw-visage-PROD-PUB-1A" {
  assign_ipv6_address_on_creation = false
  availability_zone               = "us-west-1a"
  cidr_block                      = "10.205.190.64/26"
  tags = {
    "Environment" = "hipaa"
    "ManagedBy"   = "Terraform"
    "Name"        = "nw-visage-PROD-PUB-1A"
  }
  vpc_id = aws_vpc.nw-visage-PROD.id
  timeouts {}
}

# aws_subnet.nw-visage-PROD-PUB-1C:
resource "aws_subnet" "nw-visage-PROD-PUB-1C" {
  assign_ipv6_address_on_creation = false
  availability_zone               = "us-west-1c"
  cidr_block                      = "10.205.190.128/26"
  tags = {
    "Environment" = "hipaa"
    "ManagedBy"   = "Terraform"
    "Name"        = "nw-visage-PROD-PUB-1C"
  }
  vpc_id = aws_vpc.nw-visage-PROD.id
  timeouts {}
}

# aws_subnet.nw-visage-PROD-PVT-1A:
resource "aws_subnet" "nw-visage-PROD-PVT-1A" {
  assign_ipv6_address_on_creation = false
  availability_zone               = "us-west-1a"
  cidr_block                      = "10.205.190.0/27"
  tags = {
    "Environment" = "hipaa"
    "ManagedBy"   = "Terraform"
    "Name"        = "nw-visage-PROD-PVT-1A"
  }
  vpc_id = aws_vpc.nw-visage-PROD.id
  timeouts {}
}

# aws_subnet.nw-visage-PROD-PVT-1C:
resource "aws_subnet" "nw-visage-PROD-PVT-1C" {
  assign_ipv6_address_on_creation = false
  availability_zone               = "us-west-1c"
  cidr_block                      = "10.205.190.32/27"
  tags = {
    "Environment" = "hipaa"
    "ManagedBy"   = "Terraform"
    "Name"        = "nw-visage-PROD-PVT-1C"
  }
  vpc_id = aws_vpc.nw-visage-PROD.id
  timeouts {}
}