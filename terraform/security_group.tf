# Security Groups
resource "aws_security_group" "simple-server" {
  name        = "simple-server"
  description = "Allow all inbound traffic"

  tags {
    Name = "simple-server"
  }
}

resource "aws_security_group_rule" "simple-server-in-https" {
  from_port = 443
  protocol = "tcp"
  security_group_id = "${aws_security_group.simple-server.id}"
  to_port = 443
  type = "ingress"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "simple-server-in-http" {
  from_port = 80
  protocol = "tcp"
  security_group_id = "${aws_security_group.simple-server.id}"
  to_port = 80
  type = "ingress"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "simple-server-in-ssh" {
  from_port = 22
  protocol = "tcp"
  security_group_id = "${aws_security_group.simple-server.id}"
  to_port = 22
  type = "ingress"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "simple-server-out" {
  from_port = 0
  protocol = "-1"
  security_group_id = "${aws_security_group.simple-server.id}"
  to_port = 0
  type = "egress"
  cidr_blocks = ["0.0.0.0/0"]
}
