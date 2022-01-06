resource "aws_route_table" "route" {
  vpc_id = aws_vpc.main.id

  route = []

  tags = {
    Name = "example"
  }
}

#{
#cidr_block                = var.DEFAULT_VPC_CIDR
#vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
#
#}