# VPC and Subnet
resource "aws_vpc" "simple-server" {
  cidr_block = "${var.vpc_cidr}"

  tags {
    Name = "simple-server"
  }
}

resource "aws_subnet" "simple-server" {
  cidr_block = ""
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