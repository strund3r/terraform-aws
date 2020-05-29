resource "aws_instance" "MyFirstEC2Instance" {
  ami           = "ami-068663a3c619dd892"
  instance_type = "t2.micro"
  tags = {
    Name = "Created Through Terraform"
  }
  security_groups = ["Terraform Example"]
  key_name        = "terraform-aws"
  user_data       = <<-EOF
                #!/bin/bash
                sudo apt update
                sudo apt install -y apache2
                sudo ufw allow 'Apache'
                sudo bash -c "echo 'Hey there, I am $(hostname -f)' > /var/www/html/index.html"
                EOF
}
