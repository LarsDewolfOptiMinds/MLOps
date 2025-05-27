terraform {
  required_version = ">= 0.11.0"
}

resource "aws_instance" "ubuntu" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"

  tags {
    Name = "${var.ami_id}"
  }
}