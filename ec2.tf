resource "aws_instance" "instance1" {
  ami                         = "ami-0892d3c7ee96c0bf7"
  instance_type               = var.inst_type
  key_name                    = "vk-test"
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = aws_subnet.publicsubnet1.id
  associate_public_ip_address = true

  root_block_device {
    volume_size           = 50
    delete_on_termination = true
  }

  tags = {
    Name = "terraform-test server1"
  }
}

resource "aws_instance" "instance2" {
  ami                         = "ami-02b92c281a4d3dc79"
  instance_type               = var.inst_type
  key_name                    = "vk-test"
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = aws_subnet.privatesubnet1.id
  associate_public_ip_address = true

  root_block_device {
    volume_size           = 50
    delete_on_termination = true
  }

  tags = {
    Name = "terraform-test server2"
  }
}
