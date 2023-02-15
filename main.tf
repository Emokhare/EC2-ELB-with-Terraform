
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}


resource "aws_instance" "EC2" {
  instance_type = var.IT
  ami           = var.Num
}
