resource "aws_route_table" "route" {
  vpc_id = aws_vpc.main.id

  route = [
    {
      cidr_block                 = var.DEFAULT_VPC_CIDR
      vpc_peering_connection_id  = aws_vpc_peering_connection.peer.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      nat_gateway_id             = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
    }
  ]

  tags = {
    Name = "example"
  }
}

#resource "aws_route" "route-from-default-vpc" {
#  count                     = length(data.aws_route_tables.default-vpc-routes.ids)
#  route_table_id            = element(data.aws_route_tables.default-vpc-routes.ids, count.index)
#  destination_cidr_block    = [for s in var.list : upper(s)]
#  vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
#  depends_on                = [aws_route_table.route]
#}

