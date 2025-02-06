output "openvpn_instance" {
  value = aws_instance.openvpn.public_ip
}

output "nextcloud_instance" {
  value = aws_instance.nextcloud.public_ip
}

output "rds_endpoint" {
  value = aws_db_instance.mysql.endpoint
}
