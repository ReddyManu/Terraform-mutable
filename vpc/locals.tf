locals {
  DEFAULT_VPC_CIDR = split(",", var.DEFAULT_VPC_CIDR)
  ALL_VPC_CIDR     = concat(local.DEFAULT_VPC_CIDR, var.VPC_CIDR_ADDON)
}

output "ALL_VPC_CIDR" {
  value = local.ALL_VPC_CIDR
}
