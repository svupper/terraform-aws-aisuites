module "network" {
  source          = "./network"
  access_ip       = var.access_ip
  vpc_cidr        = local.vpc_cidr
  security_groups = local.security_groups
}

module "key" {
  source = "./key_pairing"
}

module "ec2" {
    depends_on = [
    module.key
  ]
  source        = "./ec2"
  public_sg     = module.network.public_sg
  public_subnet = module.network.public_subnet
  ami           = var.ami
  instance_type = var.instance_type
  volume_size   = var.volume_size
  key_id = module.key.key_id
}

module "connection" {
  depends_on = [
    module.ec2
  ]
  source         = "./connection"
  ec2_public_ip  = module.ec2.ec2_public_ip
  ec2_public_dns = module.ec2.ec2_public_dns
  key_name       = module.key.key_name
}