variable "ebs_volume_size" {
  description = "Taille du volume EBS (en Go)"
  type        = number
}

variable "AZ" {
  description = "Zone de disponibilité AWS où créer le volume EBS"
  type        = string
}
