output "subnet-id" {
  description = "Public subnet identifier."
  value = "${aws_subnet.main.id}"
}
