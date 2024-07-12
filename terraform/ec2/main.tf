resource "aws_instance" "mongodb" {
  ami           = "ami-04b70fa74e45c3917" # Example AMI, use the one for outdated Linux
  instance_type = "t2.micro"
  key_name      = "devopskeypair"

  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y mongodb
              sudo systemctl start mongodb
              sudo systemctl enable mongodb
              EOF

  tags = {
    Name = "mongodb-server"
  }
}
