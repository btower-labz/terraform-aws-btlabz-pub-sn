resource "aws_subnet" "main" {
  vpc_id                          = "${var.vpc-id}"
  cidr_block                      = "${var.cidr}"
  availability_zone               = "${var.az}"
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = false

  tags = "${merge(
    var.tags,
    map(
      "Name", "${var.name}"
    )
  )}"
}

resource "aws_main_route_table_association" "main" {
  vpc_id         = "${var.vpc-id}"
  route_table_id = "${var.rt-id}"
}
