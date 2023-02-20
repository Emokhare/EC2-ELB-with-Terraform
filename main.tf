
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}



resource "aws_instance" "EC2" {
  count = 3
  instance_type = var.IT
  ami           = var.Num
  security_groups = ["${aws_security_group.EC2.name}"]
  
  tags = {
   Name = "EC2"
  }
}


