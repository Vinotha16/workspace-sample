provider "aws" {
  access_key = "access-key"
  secret_key = "secret-key"
  region = var.region
}  

locals {
  instance_name = "${terraform.workspace}-instance"
}
  
resource "aws_instance" "web" {
  ami = var.ami
  instance_type = var.instance_type
  
  tags = {
    Name = local.instance_name
  }
}
