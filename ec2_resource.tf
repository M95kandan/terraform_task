
resource "aws_instance" "backend" {
  ami           = "ami-0449c34f967dbf18a"
  instance_type = "t2.micro"
  count         = 2
  key_name      = "xpb_key"
  vpc_security_group_ids = [aws_security_group.xpb_sg.id]

  tags = {
    Name   = "xpayback$(count.index)"
    depart = "backend"
  }
}

resource "aws_instance" "haproxy" {
  ami           = "ami-0449c34f967dbf18a"
  instance_type = "t2.micro"
  count         = 1
  key_name      = "xpb_key"
  vpc_security_group_ids = [aws_security_group.xpb_sg.id]

  tags = {
    Name   = "xpayback"
    depart = "haproxy"
  }
}
