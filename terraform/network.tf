# VPC and Subnet
resource "aws_vpc" "simple-server" {
  cidr_block = "172.31.0.0/16"

  tags {
    Name = "simple-server"
  }
}

resource "aws_subnet" "simple-server" {
  cidr_block = "172.31.16.0/20"
  vpc_id = "${aws_vpc.simple-server.id}"
  map_public_ip_on_launch = true

  tags {
    Name = "simple-server"
  }
}

resource "aws_internet_gateway" "simple-server" {
  vpc_id = "${aws_vpc.simple-server.id}"

  tags {
    Name = "simple-server"
  }
}