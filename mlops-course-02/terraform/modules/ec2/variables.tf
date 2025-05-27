variable "ami_id" {
  description = "ID of the AMI to provision. Default is Ubuntu 14.04 Base Image"
  default = "ami-2e1ef954-lars"
}

variable "instance_type" {
  description = "type of EC2 instance to provision."
  default = "t2.micro"
}