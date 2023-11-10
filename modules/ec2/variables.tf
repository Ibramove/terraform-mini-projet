variable "instance_type" {
  description = "Type d'instance EC2"
  type        = string
  default     = "t2.nano"
}
variable "sg" {
  type        = string
  description = "set sg name "
  default     = "ibra-sg"
}

variable "instance_name" {
  description = "Nom de l'instance EC2"
  type        = string
  default     = "t2.micro"
}

variable "root_volume_size" {
  description = "Taille du volume racine de l'instance EC2 (en Go)"
  type        = number
  default     = 50
}


variable "ssh_key" {
  description = "Nom de la clé SSH"
  type        = string
  default     = "devops"
}

variable "AZ" {
  description = "Zone de disponibilité (Availability Zone)"
  type        = string
}

variable "sg_name" {
  description = "Nom du groupe de sécurité"
  type        = string
  default     = "NULL"
}
variable "public_ip" {
  description = "Adresse IP publique"
  type        = string
  default     = "NULL"
}

variable "user" {
  description = "Nom d'utilisateur SSH"
  type        = string
  default     = "ubuntu"
}

