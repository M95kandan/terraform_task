data "aws_ami" "findingAmi" {
  
  most_recent      = true
  owners           = ["self"]

  filter {
    name   = "name"
    values = ["amzn2-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}
