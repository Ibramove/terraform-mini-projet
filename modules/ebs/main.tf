resource "aws_ebs_volume" "ebs" {
  size = var.ebs_volume_size
  availability_zone = var.AZ

}



