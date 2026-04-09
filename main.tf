provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"
  cidr   = var.cidr
  env    = terraform.workspace
}

module "sg" {
  source      = "./modules/security_group"
  env         = terraform.workspace
  allowed_ips = var.allowed_ips
}

module "ec2" {
  source          = "./modules/ec2"
  env             = terraform.workspace
  instance_type   = var.instance_type
  ami             = var.ami
  sg_id           = module.sg.sg_id
  prevent_destroy = var.prevent_destroy
}

module "s3" {
  source          = "./modules/s3"
  env             = terraform.workspace
  prevent_destroy = var.prevent_destroy
}