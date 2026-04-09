resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [var.sg_id]

  tags = {
    Name        = "${var.env}-ec2"
    Environment = var.env
  }

  
}