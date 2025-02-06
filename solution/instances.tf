resource "aws_instance" "openvpn" {
  ami           = "ami-04681163a08179f28"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.openvpn.id]

  tags = {
    Name = "OpenVPN"
  }
}

resource "aws_instance" "nextcloud" {
  ami           = "ami-04681163a08179f28"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.nextcloud.id]

  tags = {
    Name = "Nextcloud"
  }
}
