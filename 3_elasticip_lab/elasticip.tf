resource "aws_eip" "my_elastic_ip" {
  instance = "aws_instance.instance.id"
  vpc      = true
}

output "my_elastic_ip_address" {
    value = "aws_eip.my_elastic_ip.public_ip"
}