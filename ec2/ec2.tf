resource "aws_instance" "webserver" {
  ami           = var.ami_id
  instance_type = var.aws_instance
  associate_public_ip_address   = true
  vpc_security_group_ids =  [var.sg_id]

  tags = {
    Name = "netflix-webserver"
  }
}

