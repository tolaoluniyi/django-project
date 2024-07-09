resource "aws_instance" "mongodb" {
  ami           = "ami-0c55b159cbfafe1f0" # Example AMI, use the one for outdated Linux
  instance_type = "t2.micro"
  key_name      = "your-key-pair"

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
