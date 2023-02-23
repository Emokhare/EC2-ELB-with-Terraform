output "elb-dns-name" {
    value = aws_lb.application_lb.dns_name
  
}

output "public_ips" {
  value = aws_instance.EC2.*.public_ip
}