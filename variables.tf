variable "region" {
  default = "ap-south-1"
}

variable "cidr" {
  default = "10.0.0.0/16"
}

variable "ami" {
  default = "ami-0f5ee92e2d63afc18"
}

variable "instance_type" {}
variable "allowed_ips" {}
variable "prevent_destroy" {}