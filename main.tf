resource "aws_subnet" "main" {
  vpc_id                          = var.vpc_id
  cidr_block                      = var.cidr
  availability_zone               = var.az
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = false

  tags = merge(
    var.tags,
    {
      "Name" = var.name
    },
  )
}

resource "aws_route_table_association" "main" {
  subnet_id      = aws_subnet.main.id
  route_table_id = var.rt_id
}
