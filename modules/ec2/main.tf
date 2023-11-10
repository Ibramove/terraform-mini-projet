data "aws_ami" "my_ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # ID du propriétaire Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
resource "aws_instance" "my_ec2" {
  ami           = data.aws_ami.my_ubuntu.id
  instance_type = var.instance_type
  key_name = "devops-ibra"
  availability_zone = var.AZ
  security_groups = ["${var.sg_name}"]

  tags = {
    Name = "${var.sg}-ec2"

  }
    root_block_device {
    delete_on_termination = true
  }
   provisioner "local-exec" {
    command = "echo PUBLIC IP: ${var.public_ip} >> IP_ec2.txt"
  }

provisioner "remote-exec" {
  inline = [
    "sudo apt update -y",
    "sudo apt install -y nginx",  # Ajoutez cette ligne pour installer Nginx.
    "sudo systemctl start nginx",
    "sudo systemctl enable nginx",
    "echo bonjour"
  ]
  connection {
    type        = "ssh"
    user        = "ubuntu"  # Assurez-vous que cette valeur est correcte.
    #private_key = file("../devops-ibra.pem")  # Chemin complet vers votre clé privée SSH.
    #private_key = file("C:/Users/monji/Desktop/${var.ssh_key}.pem")
    private_key = file("C:/Users/ibrah/Desktop/terraform/code/mini_projet/devops-ibra.pem")
    host        = self.public_ip  # Utilisation de l'attribut 'public_ip' pour récupérer l'adresse IP publique de l'instance.
  }
}

}
