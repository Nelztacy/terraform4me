resource "aws_security_group" "new_sg" {
  name        = "technelogics-sg"
  description = "Allow SSH and ICMP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "kubemaster" {
  count           = 3
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name        = var.key_name
  security_groups = [aws_security_group.new_sg.name]

  tags = {
    Name = "kubemaster0${count.index + 1}"
  }
}

resource "aws_instance" "kubeworker" {
  count           = 2
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name        = var.key_name
  security_groups = [aws_security_group.new_sg.name]

  tags = {
    Name = "kubeworker0${count.index + 1}"
  }
}
