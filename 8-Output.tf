output "instance_ip_addr" {
  value       = aws_vpc.hungry-wolves-prod.arn
  description = "The private IP address of the main server instance."
}

output "instance_ip_addr2" {
  value       = aws_vpc.hungry-wolves-prod.id
  description = "The private IP address of the main server instance."
}