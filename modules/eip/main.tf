

#resource "aws_instance" "my_ip" {resource "aws_eip" "my_eip" {vpc = true}

resource "aws_eip" "my_eip" {
  domain = "vpc"  # Utilisation de "vpc" pour une EIP de domaine VPC.
}

