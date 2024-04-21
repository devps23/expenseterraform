resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instanceType
  vpc_security_group_ids = [data.aws_security_group.security.id]
  tags = {
    Name = var.tag_name
  }
}
data "aws_security_group" "security"{
  name = "allow-all"
}
