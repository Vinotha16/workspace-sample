provider "aws" {
  access_key = "AKIAU4VT5HACQMVQRLBW"
  secret_key = "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"
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
