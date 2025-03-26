output "intance_public_ip" {
  description = "The public IP address of the EC2 instance."
  value       = aws_instance.myec2vm.public_ip
}

output "public_dns" {
  description = "The public DNS name of the EC2 instance."
  value       = aws_instance.myec2vm.public_dns 
}