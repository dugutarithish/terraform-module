provider "aws" {
  region = "ap-south-1" # This is the Mumbai region
}

resource "aws_instance" "example" {
  ami                     = var.ami_value
  instance_type           = var.instance_type_value
  subnet_id               = var.subnet_id_value
 
  tags = {
    Name = "MyTerraformInstance"
  }
}
