resource "aws_instance" "ec2" {
  count = var.OD_INSTANCE_COUNT
  ami = data.aws_ami.ami.id
  instance_type = var.INSTANCE_TYPE
  subnet_id = element(data.terraform_remote_state.vpc.outputs.PRIVATE_SUBNETS_IDS, count.index)
}