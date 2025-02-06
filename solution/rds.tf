resource "aws_db_instance" "mysql" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  identifier           = "mydatabase"
  username             = "admin"
  password             = "admin123"
  parameter_group_name = "default.mysql8.0"
  publicly_accessible  = false
  vpc_security_group_ids = [aws_security_group.mysql.id]
  db_subnet_group_name = aws_db_subnet_group.main.name

  tags = {
    Name = "MySQL-RDS"
  }
}

resource "aws_db_subnet_group" "main" {
  name       = "main-db-subnet-group"
  subnet_ids = [aws_subnet.private_subnet_1.id, aws_subnet.private_subnet_2.id]

  tags = {
    Name = "Main-DB-Subnet-Group"
  }
}


