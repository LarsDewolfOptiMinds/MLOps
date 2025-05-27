locals {
  name = join(var.delimiter, [var.prefix, var.ami_id])
}
