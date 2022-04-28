resource "aws_security_group" "sg" {
  name        = "Terraform-server-SG"
  description = "Restrictions for Terraform server"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id = aws_vpc.Main.id

  tags = {
    Name = "Terraform-Server-SG"
  }
}