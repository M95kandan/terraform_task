output "aws_pub_ip_backend" {
  value = aws_instance.backend[*].public_ip
}

output "aws_pub_ip_haproxy" {
  value = aws_instance.haproxy[*].public_ip
}



output "final_web_ipadd" {

value = "http://${aws_instance.haproxy[0].public_ip}:8080"

}
