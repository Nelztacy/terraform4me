resource "aws_instance" "ec2_web-srv" {
  # (resource arguments)
  ami = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  tags = {
    "Name" = "web.srv"
  }
}