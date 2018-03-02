output "subnet_id" {
  description = "Public subnet identifier."
  value       = "${aws_subnet.main.id}"
}
