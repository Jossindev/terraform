resource "aws_instance" "grafana" {
  ami           = "ami-0ac80df6eff0e70b5"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.grafana.id]

  tags = {
    Name = "Grafana"
  }
}

resource "aws_instance" "prometheus" {
  ami           = "ami-0ac80df6eff0e70b5"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.prometheus.id]

  tags = {
    Name = "Prometheus"
  }
}

resource "aws_instance" "openvpn" {
  ami           = "ami-0ac80df6eff0e70b5"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.openvpn.id]

  tags = {
    Name = "OpenVPN"
  }
}

resource "aws_instance" "nextcloud" {
  ami           = "ami-0ac80df6eff0e70b5"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.grafana.id]

  tags = {
    Name = "Nextcloud"
  }
}
