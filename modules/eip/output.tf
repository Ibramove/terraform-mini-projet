output "sorti_eip_id" {
  value = aws_eip.my_eip.id
}

output "sorti_eip" {
  value = aws_eip.my_eip.public_ip
}

