# Create a EC2 Instance (Ubuntu 20)
resource "aws_instance" "node" {
  instance_type          = var.instance_type
  ami                    = var.ami
  key_name               = var.key_id
  vpc_security_group_ids = [var.public_sg]
  subnet_id              = var.public_subnet

  tags = {
    Name = "TF Generated EC2"
  }
  
  root_block_device {
    volume_size = var.volume_size
  }
}


# Create and assosiate an Elastic IP
resource "aws_eip" "eip" {
  instance = aws_instance.node.id
}
