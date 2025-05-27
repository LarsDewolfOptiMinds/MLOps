module "ec2" {
  for_each = { for ec2 in var.ec2 : ec2.key => ec2 }
  source   = "./modules/ec2"
  
  ami_id             = each.value.ami_id
  instance_type      = each.value.instance_type
}