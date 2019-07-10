 resource "aws_vpc" "user12-final" {
  cidr_block           = "112.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  tags = {
    Name = "user12-final"
  }
}

