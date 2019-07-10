 # user12_public_1a
resource "aws_route_table" "user12-public_1a" {
  vpc_id = "${aws_vpc.user12-final.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.user12-ig.id}"
  }

  tags = {
    Name = "user12-public-1a"
  }
}

resource "aws_route_table_association" "user12-public_1a" {
  subnet_id      = "${aws_subnet.public_1a.id}"
  route_table_id = "${aws_route_table.user12-public_1a.id}"
}


# dev_private_1a
resource "aws_route_table" "user12-private_1a" {
  vpc_id = "${aws_vpc.user12-final.id}"

  route {
    cidr_block     = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.user12-ig.id}"
  }

  tags = {
    Name = "user12-private-1a"
  }
}

resource "aws_route_table_association" "user12-private_1a" {
  subnet_id      = "${aws_subnet.private_1a.id}"
  route_table_id = "${aws_route_table.user12-private_1a.id}"
}

