 resource "aws_subnet" "public_1a" {
  vpc_id            = "${aws_vpc.user12-final.id}"
  availability_zone = "ap-northeast-1a"
  cidr_block        = "112.0.1.0/24"

  tags = {
    Name = "user12-public-1a"
  }
}

resource "aws_subnet" "private_1a" {
  vpc_id            = "${aws_vpc.user12-final.id}"
  availability_zone = "ap-northeast-1a"
  cidr_block        = "112.0.2.0/24"

  tags = {
    Name = "user12-private-1a"
  }
}

