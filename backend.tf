terraform {
  backend "s3" {
    bucket = "onkar-terraform-state-12345"
    key    = "multi-env/terraform.tfstate"
    region = "ap-south-1"
  }
}