resource "aws_instance" "simple-server" {
  ami = "ami-7c1bfd1b"
  instance_type = "t2.micro"
  key_name = "MyEc2KeyPair"
  vpc_security_group_ids = ["${aws_security_group.simple-server.id}"]
  user_data = "${file("user_data/.puppet_user_data.sh")}"

  tags {
    Name = "simple-server"
  }
}