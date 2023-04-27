variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "terraform-ec2-instance"
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}

variable "access_ip" {
  type = string
}

variable "aws_region" {
  type    = string
  default = "eu-west-3"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "ami" {
  type    = string
  default = "ami-0b69ea66ff7391e80"
}

variable "volume_size" {
  type    = number
  default = 100
}

