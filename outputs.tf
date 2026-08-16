output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "Public subnet ID"
  value       = aws_subnet.public.id
}

output "webserver1_public_ip" {
  description = "Public IP of Web Server 1"
  value       = aws_instance.webserver1.public_ip
}

output "webserver2_public_ip" {
  description = "Public IP of Web Server 2"
  value       = aws_instance.webserver2.public_ip
}

output "webserver1_url" {
  description = "Web Server 1 URL"
  value       = "http://${aws_instance.webserver1.public_ip}"
}

output "webserver2_url" {
  description = "Web Server 2 URL"
  value       = "http://${aws_instance.webserver2.public_ip}"
}

