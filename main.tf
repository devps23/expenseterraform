resource "aws_instance" "web" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.small"
  vpc_security_group_ids = [data.aws_security_group.security.id]
  tags = {
    Name = "demo"
  }
}
data "aws_security_group" "security"{
  name = "allow-all"
}