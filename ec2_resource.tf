
resource "aws_instance" "backend" {
  ami           = data.aws_ami.findingAmi.id
  instance_type = "t2.micro"
  count         = 2
  key_name      = "xpb_key"
  vpc_security_group_ids = [aws_security_group.xpb_sg.id]

  tags = {
    Name   = "xpayback"
    depart = "backend"
  }
}

resource "aws_instance" "haproxy" {
  ami           = data.aws_ami.findingAmi.id
  instance_type = "t2.micro"
  count         = 1
  key_name      = "xpb_key"
  vpc_security_group_ids = [aws_security_group.xpb_sg.id]

  tags = {
    Name   = "xpayback"
    depart = "haproxy"
  }
}
