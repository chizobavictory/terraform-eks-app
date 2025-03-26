output "intance_public_ip" {
  description = "The public IP address of the EC2 instance."
  value = toset([for instance in aws_instance.myec2vm: instance.public_ip])
}

output "public_dns" {
  description = "The public DNS name of the EC2 instance."
  value = toset([for instance in aws_instance.myec2vm: instance.public_dns])
}

output "for_output_list" {
  description = "List of instance types to choose from."
  value       = [for instance in aws_instance.myec2vm : instance.instance_type]
}

output "instance_publicdns2" {
  value = tomap({for az, instance in aws_instance.myec2vm: az => instance.public_dns})
}

output "for_output_map" {
  description = "Map of instance types to choose from."
  value       = { for instance in aws_instance.myec2vm : instance.id => instance.public_dns }
}

output "for_output_map2" {
  description = "Map of instance types to choose from."
  value       = { for c, instance in aws_instance.myec2vm : c => instance.public_dns }
}

# output "legacy_splat_instance_publicdns" {
#   description = "The public DNS name of the EC2 instance."
#   value       = aws_instance.myec2vm.*.public_dns
# }

# output "latest_splat_instance_publicdns" {
#   description = "The public DNS name of the EC2 instance."
#   value       = aws_instance.myec2vm[*].public_dns
# }

/*
# Additional Important Note about OUTPUTS when for_each used
1. The [*] and .* operators are intended for use with lists only. 
2. Because this resource uses for_each rather than count, 
its value in other expressions is a toset or a map, not a list.
3. With that said, we can use Function "toset" and loop with "for" 
to get the output for a list
4. For maps, we can directly use for loop to get the output and if we 
want to handle type conversion we can use "tomap" function too 
*/

