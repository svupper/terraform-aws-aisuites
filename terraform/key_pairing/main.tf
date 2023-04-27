# Get Availability Zones
resource "tls_private_key" "key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "random_pet" "key_prefix" {}

# Create a Key Pair
resource "aws_key_pair" "key_pair" {
  key_name   = "${var.key_prefix}-${random_pet.key_prefix.id}"
  public_key = tls_private_key.key.public_key_openssh

  provisioner "local-exec" {
    command = <<-EOT
      echo "${tls_private_key.key.private_key_pem}" > ../"${var.key_prefix}-${random_pet.key_prefix.id}".pem
      chmod 600 ../"${var.key_prefix}-${random_pet.key_prefix.id}".pem
    EOT
  }
}