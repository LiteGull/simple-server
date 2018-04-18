data "local_file" "user-data" {
  filename = "${path.module}/user_data/user_data.sh"
}

data "aws_ssm_parameter" "simple-server" {
  name = "simple-server-key"
}