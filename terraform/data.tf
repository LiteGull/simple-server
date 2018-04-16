data "local_file" "user-data" {
  filename = "${path.module}/user_data/user_data.sh"
}

data "local_file" "key" {
  filename = "${var.key}"
}