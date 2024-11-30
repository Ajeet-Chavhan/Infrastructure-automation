provider "aws" {
  region = "ap-south-1" # Replace with your desired AWS region.
}

resource "aws_instance" "server1" {
 subnet_id = "subnet-0df9f3daf4cc6cee6"
  ami           = "ami-0614680123427b75e"
  instance_type = "t2.micro"
  key_name               = "m"
  vpc_security_group_ids = ["default"]

  user_data = file("grafan.sh")
  tags = {
    Name="grafana-server"
  }
  
}
resource "aws_instance" "server2" {
 subnet_id = "subnet-0df9f3daf4cc6cee6"
  ami           = "ami-0614680123427b75e"
  instance_type = "t2.micro"
  key_name               = "m"
  vpc_security_group_ids = ["default"]

  tags = {
    Name="node-expo"
  }
  
}