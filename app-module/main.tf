resource "aws_instance" "ec2" {
  ami = data.aws_ami.ami.id
  instance_type = var.INSTANCE_TYPE
}