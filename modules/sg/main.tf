
resource "aws_security_group" "m_sg" {
  name  = var.sg
  #name        = "my-security-group"
  description = "My security group description"

  ingress {
    description      = "https from all"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

   ingress {
    description      = "SSH from all"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description      = "https from all"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    # Règles Egress (Sortantes)
  egress {
    from_port   = 0             # Port de départ (tous les ports)
    to_port     = 0             # Port de destination (tous les ports)
    protocol    = "-1"          # Tous les protocoles
    cidr_blocks = ["0.0.0.0/0"] # Autoriser toutes les adresses IP de destination
  }
}

