resource "aws_lb_target_group" "tg" {
  name     = local.tags["Name"]
  port     = var.PORT
  protocol = "HTTP"
  vpc_id   = data.terraform_remote_state.vpc.outputs.VPC_ID
}
