resource "aws_instance" "simple-server" {
  ami = "ami-7c1bfd1b"
  instance_type = "t2.micro"
  key_name = "MyEc2KeyPair"
  vpc_security_group_ids = ["${aws_security_group.simple-server.id}"]
  user_data = "${data.local_file.user-data.content}"

  provisioner "file" {
    source      = "../puppet"
    destination = "/home/ec2-user"
    connection {
      type     = "ssh"
      user     = "ec2-user"
      private_key = "${file("~/.ssh/MyEc2KeyPair.pem")}"
    }
  }

  tags {
    Name = "simple-server"
  }
}